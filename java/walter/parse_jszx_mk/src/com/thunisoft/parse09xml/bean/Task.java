package com.thunisoft.parse09xml.bean;

public class Task {
    
    private String id;
    private String path;
    
    public Task(String id, String path) {
        super();
        this.id = id;
        this.path = path;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getPath() {
        return path;
    }
    public void setPath(String path) {
        this.path = path;
    }
    
    @Override
    public String toString() {
        return "Task [id=" + id + ", path=" + path + "]";
    }
    
}
