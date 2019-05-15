package com.thunisoft.parse09xml.bean;

import java.util.Date;

public class StateTimer {
    private static StateTimer instance;
    private Date startTime;
    
    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    private StateTimer() {
    }

    public synchronized static StateTimer getInstance() {
        if (instance == null) {
            instance = new StateTimer();
        }
        return instance;
    }
}
