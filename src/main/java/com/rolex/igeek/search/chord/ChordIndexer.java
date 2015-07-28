/*
 * @(#)ChordIndexer.java	1.0 2015/7/16
 *
 */
package com.rolex.igeek.search.chord;

import com.rolex.common.ServiceFactory;
import com.rolex.igeek.po.Chord;
import com.rolex.util.TimerUtil;
import jeasy.analysis.MMAnalyzer;
import org.apache.log4j.Logger;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.Term;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
//import org.wltea.analyzer.lucene.IKAnalyzer;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/16
 * version: 1.0
 */
public class ChordIndexer {

    private static Logger log = Logger.getLogger("ChordIndexer");
    private static Analyzer analyzer;
    public static final String CHORD_ID = "id";
    public static final String CHORD_NAME = "name";
    public static final String CHORD_DESC = "desc";
    public static final String CHORD_LEVEL = "level";
    public static final String SEARCH_CHORD_INDEX_DIR = "/igeek/home/search/chord";
    public static long lastOptimizeTime = 0L;
    public static final long HOUR = 3600000L;
    public static final boolean SAVE_ON_DISK = true;
    private static boolean isRebuilding = false;
    public static final int MERGE_FACTOR = 20;
    public static final int CHORDS_PER_FETCH = 200;

    static {
        initializeAnalyzer();
    }

    private static void initializeAnalyzer() {
        // 初始化分词器
        analyzer = new MMAnalyzer();
        //analyzer = new IKAnalyzer(true);
    }

    static Analyzer getAnalyzer() {
        return analyzer;
    }

    /**
     * 安排添加chord的任务
     *
     */
    public static void scheduleRebuildChordIndexTask() {
        // 创建一个添加chord的任务
        ChordIndexTask task = new ChordIndexTask(null, ChordIndexTask.OPERATION_REBUILD);
        // 将任务加入到计时器
        TimerUtil.getInstance().schedule(task, 0);
    }

    /**
     * 安排添加chord的任务
     *
     * @param chord
     */
    public static void scheduleAddChordTask(Chord chord) {
        // 创建一个添加chord的任务
        ChordIndexTask task = new ChordIndexTask(chord, ChordIndexTask.OPERATION_ADD);
        // 将任务加入到计时器
        TimerUtil.getInstance().schedule(task, 0);
    }

    /**
     * 安排更新chord的任务
     *
     * @param chord
     */
    public static void scheduleUpdateChordTask(Chord chord) {
        // 创建一个添加chord的任务
        ChordIndexTask task = new ChordIndexTask(chord, ChordIndexTask.OPERATION_UPDATE);
        // 将任务加入到计时器
        TimerUtil.getInstance().schedule(task, 0);
    }

    /**
     * 安排删除chord的任务
     *
     * @param chord
     */
    public static void scheduleDeleteChordTask(Chord chord) {
        // 创建一个添加chord的任务
        ChordIndexTask task = new ChordIndexTask(chord, ChordIndexTask.OPERATION_DELETE);
        // 将任务加入到计时器
        TimerUtil.getInstance().schedule(task, 0);
    }

    /**
     * 添加chord到index
     *
     * @param chord
     */
    public static void addChordToIndex(Chord chord){
        Directory directory = null;
        IndexWriter indexWriter = null;

        File file = new File(SEARCH_CHORD_INDEX_DIR);
        if(!file.exists()){
            file.mkdir();
        }
        try {
            directory = FSDirectory.open(file);
            indexWriter = getIndexWriter(directory,false);
            if (indexWriter == null) {
                log.warn("Cannot get the IndexWriter");
                return;
            }
            doIndexChord(chord, indexWriter);

            long now = System.currentTimeMillis();
            long timeFromLastOptimize = now - lastOptimizeTime;
            if(SAVE_ON_DISK && timeFromLastOptimize > HOUR){
                indexWriter.optimize();
                lastOptimizeTime = now;
            }

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if(indexWriter != null){
                try {
                    indexWriter.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(directory != null){
                try {
                    directory.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void rebuildIndex(){
        isRebuilding = true;
        int maxChordId = 0;
        long start = System.currentTimeMillis();

        Directory directory = null;
        IndexWriter writer = null;
        try {
            directory = FSDirectory.open(new File(SEARCH_CHORD_INDEX_DIR));
            writer = ChordIndexer.getIndexWriter(directory, true);
            writer.setMergeFactor(MERGE_FACTOR);
            // note that the maxPostID is got at the beginning of the method
            // so that it will index only these posts. Later while indexing,
            // if new posts are added, then other task will take care it



            if (maxChordId <= 0) {
                maxChordId = ServiceFactory.getChordDao().findMaxId();
            }
            int count = 0;

            for (int fromId = 0; fromId <= maxChordId /* <= is correct */; fromId += CHORDS_PER_FETCH) {
                int toId = fromId + CHORDS_PER_FETCH - 1;
                if (toId > maxChordId) {
                    toId = maxChordId;
                }

                Collection chords = ServiceFactory.getChordDao().findRange(fromId, toId);

                for (Iterator iter = chords.iterator(); iter.hasNext();) {
                    Chord chord = (Chord) iter.next();
                    ChordIndexer.doIndexChord(chord, writer);
                    count++;
                }
            } // end for

            writer.optimize();
            log.info("Rebuilt index finished successfully! " + count + " post(s) indexed.");
        } catch (Exception ex) {
            log.error("RebuildPostIndexTask.run : cannot get posts from database for indexing", ex);
        } catch (Throwable e) {
            log.error("Error while rebuilding index", e);
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    log.debug("Error closing Lucene IndexWriter", e);
                }
            }
            if (directory != null) {
                try {
                    directory.close();
                } catch (IOException e) {
                    log.debug("Cannot close directory.", e);
                }
            }
        }
        log.info("RebuildPostIndexTask took "  + (System.currentTimeMillis() - start) + " ms");
        isRebuilding = false;
    }

    public static void deleteChordFromIndex(int id){
        Directory directory = null;
        IndexReader indexReader = null;
        try {
            directory = FSDirectory.open(new File(SEARCH_CHORD_INDEX_DIR));
            indexReader = IndexReader.open(directory,false);
            Term term = new Term(CHORD_ID, String.valueOf(id));
            indexReader.deleteDocuments(term);
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if (indexReader != null) {
                try {
                    indexReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(directory != null){
                try {
                    directory.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

    }

    /**
     * 获得新的index
     *
     * @param directory
     * @param create
     * @return
     */
    static IndexWriter getIndexWriter(Directory directory, boolean create) {
        IndexWriter indexWriter = null;

        if(create == false){
            try {
                indexWriter = new IndexWriter(directory,analyzer, false, IndexWriter.MaxFieldLength.LIMITED);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else{
            File file = new File(SEARCH_CHORD_INDEX_DIR);
            if(!file.exists()){
                file.mkdir();
            }
            try {
                directory = FSDirectory.open(file);
                indexWriter = new IndexWriter(directory, analyzer, true, IndexWriter.MaxFieldLength.LIMITED);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if(SAVE_ON_DISK){
            indexWriter.setUseCompoundFile(true);
        }else{
            indexWriter.setUseCompoundFile(false);
        }

        return indexWriter;
    }

    static void doIndexChord(Chord chord, IndexWriter indexWriter) {
        if(chord == null){
            return ;
        }
        if((chord.getName() == null || "".equals(chord.getName())) || (chord.getDesc() == null || "".equals(chord.getDesc()))){
            return ;
        }
        Document document = new Document();
        document.add(new Field(CHORD_ID, Integer.toString(chord.getId()), Field.Store.YES, Field.Index.NOT_ANALYZED));
        document.add(new Field(CHORD_NAME, chord.getName(), Field.Store.YES, Field.Index.ANALYZED));
        document.add(new Field(CHORD_LEVEL, chord.getLevel(), Field.Store.YES, Field.Index.ANALYZED));
        document.add(new Field(CHORD_DESC, chord.getDesc(), Field.Store.YES, Field.Index.ANALYZED));

        try {
            indexWriter.addDocument(document);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
