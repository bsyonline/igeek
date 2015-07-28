/*
 * @(#)TimerUtil.java	1.0 2015/7/16
 *
 */
package com.rolex.util;

import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/7/16
 * version: 1.0
 */
public final class TimerUtil {

    public static final String TIMER_NAME = "Igeek Timer";

    private static TimerUtil instance = null;
    private static boolean isCanceled = false;

    private Timer timer = null;

    private TimerUtil() {
        this.timer = new Timer();
    }

    private void reloadTimer() {
        //log.info("Reload Timer in TimerUtil.");
        if (!isCanceled) {
            this.timer.cancel();

            this.timer = new Timer();
        } else {
            //log.warn("Cannot reload a cancelled Timer.");
        }
    }

    public static synchronized TimerUtil getInstance() {
        if (instance == null) {
            instance = new TimerUtil();
        }
        return instance;
    }

    public void cancel() {
        //log.debug("TimerUtil.cancel() is called");

        isCanceled = true;
        this.timer.cancel();
    }

    public boolean isTimerCanceled() {
        return isCanceled;
    }

    public void schedule(TimerTask task, Date firstTime, long period) {
        if (isCanceled)
            return;
        try {
            this.timer.schedule(task, firstTime, period);
        } catch (IllegalStateException ex) {
            //log.error("Cannot schedule task!", ex);
            reloadTimer();
        }
    }

    public void schedule(TimerTask task, Date time) {
        if (isCanceled)
            return;
        try {
            this.timer.schedule(task, time);
        } catch (IllegalStateException ex) {
            //log.error("Cannot schedule task!", ex);
            reloadTimer();
        }
    }

    public void schedule(TimerTask task, long delay) {
        if (isCanceled)
            return;
        try {
            this.timer.schedule(task, delay);
        } catch (IllegalStateException ex) {
            //log.error("Cannot schedule task!", ex);
            reloadTimer();
        }
    }

    public void schedule(TimerTask task, long delay, long period) {
        if (isCanceled)
            return;
        try {
            this.timer.schedule(task, delay, period);
        } catch (IllegalStateException ex) {
            //log.error("Cannot schedule task!", ex);
            reloadTimer();
        }
    }

    public void scheduleAtFixedRate(TimerTask task, Date firstTime, long period) {
        if (isCanceled)
            return;
        try {
            this.timer.schedule(task, firstTime, period);
        } catch (IllegalStateException ex) {
            //log.error("Cannot schedule task!", ex);
            reloadTimer();
        }
    }

    public void scheduleAtFixedRate(TimerTask task, long delay, long period) {
        if (isCanceled)
            return;
        try {
            this.timer.schedule(task, delay, period);
        } catch (IllegalStateException ex) {
            //log.error("Cannot schedule task!", ex);
            reloadTimer();
        }
    }
}
