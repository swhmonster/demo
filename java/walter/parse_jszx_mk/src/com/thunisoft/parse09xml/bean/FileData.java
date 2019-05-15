package com.thunisoft.parse09xml.bean;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import com.thunisoft.parse09xml.persistence.Constant;

/**
 * 表达一个xml文件中的所有数据
 * @author xiegq
 *
 */
public class FileData {

    // zip文件名
    private String zipFileName;
    // xml文件名
    private String fileName;
    
    // 案件类型 与 法标对应, 或 JG
    private String type;
    // 案件标识（案件xml) / 单位编号（组织机构xml）
    private Long id;
    //案件主表名称,便于通过文件数据找到主表，生成日志信息数据
    private String rootTableName;
    
    // 单位编号（法院排行）
    private int corpId;
    
    // <表名, 表数据>
    private Map<String, TableData> tableData;
    
    // 删除请求
    private List<DeleteAjRequest> delReqs;
    
    private int status = Constant.XMLLOG_STATUS_SAVE_SUCCESS;
    
    private boolean error;
    
    private boolean isIgnore;
    
    private List<String> errorMessage = new ArrayList<String>();
    
    private List<String> ignoreMessage = new ArrayList<String>();
	
	private List<String> glerrorMessage = new ArrayList<String>();
    
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public boolean isError() {
        return error;
    }

    public void setError(boolean error) {
        this.error = error;
    }

    /**
	 * set方法
	 * @param isIgnore the isIgnore to set
	 */
	public void setIgnore(boolean isIgnore) {
		this.isIgnore = isIgnore;
	}

	/**
	 * get方法
	 * @return the isIgnore
	 */
	public boolean isIgnore() {
		return isIgnore;
	}

	public String getErrorMessage() {
        return Arrays.toString(errorMessage.toArray());
    }

    public void addErrorMessage(String errorMessage) {
        this.errorMessage.add(errorMessage);
    }
    
    public String getIgnoreMessage() {
    	return Arrays.toString(ignoreMessage.toArray());
    }
    
    public void addIgnoreMessage(String ignoreMessage) {
    	this.ignoreMessage.add(ignoreMessage);
    }

    public List<DeleteAjRequest> getDelReqs() {
        return delReqs;
    }

    public void setDelReqs(List<DeleteAjRequest> delReqs) {
        this.delReqs = delReqs;
    }

    public String getFileName() {
        return fileName;
    }

    public Map<String, TableData> getTableData() {
        return tableData;
    }
    
    public String getZipFileName() {
        return zipFileName;
    }

    public FileData(String zipFileName, String fileName) {
        super();
        this.zipFileName = zipFileName;
        this.fileName = fileName;
    }

    public String getType() {
        return type;
    }

    public void setType(String caseType) {
        this.type = caseType;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
	 * set方法
	 * @param rootTableName the rootTableName to set
	 */
	public void setRootTableName(String rootTableName) {
		this.rootTableName = rootTableName;
	}

	/**
	 * get方法
	 * @return the rootTableName
	 */
	public String getRootTableName() {
		return rootTableName;
	}

	public void setTableData(Map<String, TableData> fileData) {
        this.tableData = fileData;
    }

    public int getCorpId() {
        return corpId;
    }

    public void setCorpId(int corpId) {
        this.corpId = corpId;
    }
    
    public boolean isErrorOrIgnore() {
        return error || isIgnore;
    }

	public String getGlerrorMessage() {
		return Arrays.toString(glerrorMessage.toArray());
	}

	public void addGlerrorMessage(String glerrorMessage) {
		if (!this.glerrorMessage.contains(glerrorMessage)){
			this.glerrorMessage.add(glerrorMessage);
		}
	}
	
}
