/*
 * @(#)AddUpdateChordIndexTask.java	1.0 2015/7/16
 *
 */
package com.rolex.igeek.search.chord;

import com.rolex.igeek.po.Chord;

import java.util.TimerTask;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/16
 * version: 1.0
 */
public class ChordIndexTask extends TimerTask {

    private Chord chord;
    private int operation;
    public static final int OPERATION_ADD = 0;
    public static final int OPERATION_UPDATE = 1;
    public static final int OPERATION_DELETE = 2;
    public static final int OPERATION_REBUILD = 3;

    public ChordIndexTask() {
    }

    public ChordIndexTask(Chord chord, int operation) {
        this.chord = chord;
        this.operation = operation;
    }

    @Override
    public void run() {

        try {
            switch (operation) {
                case OPERATION_UPDATE:
                    ChordIndexer.deleteChordFromIndex(chord.getId());
                    ChordIndexer.addChordToIndex(chord);
                    break;
                case OPERATION_ADD:
                    ChordIndexer.addChordToIndex(chord);
                    break;
                case OPERATION_DELETE:
                    ChordIndexer.deleteChordFromIndex(chord.getId());
                    break;
                case OPERATION_REBUILD:
                    ChordIndexer.rebuildIndex();
                    break;
                default:
                    break;
            }
        } catch (Exception ex) {

        }

    }
}
