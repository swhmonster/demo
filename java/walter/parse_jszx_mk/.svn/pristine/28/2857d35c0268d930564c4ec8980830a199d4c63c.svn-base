package com.thunisoft.parse09xml.bean;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class TaskLinked {
	private TaskLinked prev;
	private TaskLinked next;
	private Map<Long, ZipFileData> datas = new ConcurrentHashMap<Long, ZipFileData>();
	private List<ZipFileData> zips = new ArrayList<ZipFileData>();

	public TaskLinked (){
		this.prev = null;
		this.next = null;
	}
	
	public TaskLinked(final TaskLinked prev) {
		this.prev = prev;
		this.next = null;
	}

	public TaskLinked getPrev() {
		return prev;
	}

	public void setPrev(TaskLinked prev) {
		this.prev = prev;
	}

	public TaskLinked getNext() {
		return next;
	}

	public void setNext(TaskLinked next) {
		this.next = next;
	}

	public Map<Long, ZipFileData> getDatas() {
		return datas;
	}

	public void setDatas(Map<Long, ZipFileData> datas) {
		this.datas = datas;
	}

	public List<ZipFileData> getZips() {
		return zips;
	}

	public void setZips(List<ZipFileData> zips) {
		this.zips = zips;
	}
}
