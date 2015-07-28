/*
 * @(#)ChordSearchQuery.java	1.0 2015/7/16
 *
 */
package com.rolex.igeek.search.chord;

import com.rolex.common.ServiceFactory;
import com.rolex.igeek.po.Chord;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.queryParser.QueryParser;
import org.apache.lucene.search.*;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/16
 * version: 1.0
 */
@Component
public class ChordSearchQuery {

    private String searchString;
    private int hitCount;
    private List<Chord> searchResult;
    public static final String SEARCH_CHORD_INDEX_DIR = "/igeek/home/search/chord";

    public ChordSearchQuery() {
    }

    protected IndexSearcher getSearcher(Directory directory) throws IOException {
        IndexSearcher searcher = new IndexSearcher(directory, true/* readOnly */);
        return searcher;
    }

    public void searchDocuments(int offset, int rowsToReturn) {
        if ((searchString == null || searchString.equals(""))) {
            return;
        }

        BooleanQuery query = new BooleanQuery();
        try {
            Query chordNameAndDescQuery = getChordNameAndDescQuery();
            if (chordNameAndDescQuery != null) {
                query.add(chordNameAndDescQuery, BooleanClause.Occur.MUST);
                //log.debug("topicBodyQuery = " + postTitleAndTextQuery);
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Directory directory = null;
        IndexSearcher searcher = null;
        try {
            directory = FSDirectory.open(new File(SEARCH_CHORD_INDEX_DIR));
            searcher = getSearcher(directory);

            TopFieldDocs hits = searcher.search(query, null, offset + rowsToReturn, getQuerySort());

            hitCount = hits.totalHits;
            searchResult = getChords(searcher, hits, offset, rowsToReturn);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private List<Chord> getChords(IndexSearcher searcher, TopFieldDocs postHits,
                                  int offset, int rowsToReturn) throws IOException {
        if (offset < 0) {
            throw new IllegalArgumentException("The offset < 0 is not allowed.");
        }
        if (rowsToReturn <= 0) {
            throw new IllegalArgumentException(
                    "The rowsToReturn <= 0 is not allowed.");
        }
        List<Chord> retValue = new ArrayList<Chord>(hitCount);

        for (int i = offset; (i < offset + rowsToReturn) && (i < hitCount); i++) {
            int doc = postHits.scoreDocs[i].doc;
            Document postDocument = searcher.doc(doc);
            int id = Integer.parseInt(postDocument.get(ChordIndexer.CHORD_ID));
            Chord chord = ServiceFactory.getChordDao().findById(id);
            System.out.println(id + " - " + chord);
            retValue.add(chord);
        }
        return retValue;
    }

    private Sort getQuerySort() {
        Sort sortObj = new Sort(new SortField(ChordIndexer.CHORD_NAME, SortField.STRING, true));
        return sortObj;
    }

    private Query getChordNameAndDescQuery() throws ParseException {
        Analyzer analyzer = ChordIndexer.getAnalyzer();
        BooleanQuery postTitleAndTextQuery = new BooleanQuery();
        Query postTitleQuery = new QueryParser(Version.LUCENE_29, ChordIndexer.CHORD_NAME, analyzer).parse(searchString);
        postTitleAndTextQuery.add(postTitleQuery, BooleanClause.Occur.SHOULD);

        Query postTextQuery = new QueryParser(Version.LUCENE_29, ChordIndexer.CHORD_DESC, analyzer).parse(searchString);
        postTitleAndTextQuery.add(postTextQuery, BooleanClause.Occur.SHOULD);

        return postTitleAndTextQuery;
    }

    public String getSearchString() {
        return searchString;
    }

    public void setSearchString(String searchString) {
        this.searchString = searchString;
    }

    public int getHitCount() {
        return hitCount;
    }

    public void setHitCount(int hitCount) {
        this.hitCount = hitCount;
    }

    public List<Chord> getSearchResult() {
        return searchResult;
    }

    public void setSearchResult(List<Chord> searchResult) {
        this.searchResult = searchResult;
    }
}
