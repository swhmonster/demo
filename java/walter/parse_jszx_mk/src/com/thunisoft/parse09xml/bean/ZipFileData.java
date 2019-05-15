package com.thunisoft.parse09xml.bean;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/**
 * 表达一个zip文件中的数据
 * @author xiegq
 *
 */
public class ZipFileData {
    
    // zip文件名
    private String zipFileName;
    // zip文件存储的相对路径，包括文件名
    private String zipFilePath;
    // 单位编号（法院排行）
    private int corpId;
    // 文件的类型：1案件数据,2组织机构数据,3案件删除请求
    private String dataType;
    // 对应于DB_SJB..T_SJB#C_UUID
    private String taskId;
    // 导出时间
    private Date exportTime;
    // xml文件解析完成后的数据
    private List<FileData> fileData = Collections.emptyList();
    // 发生错误的文件
    private List<FileData> errFileData = Collections.emptyList();
    // 需要另外保存的实体文件
    private List<EntityFile> entityFiles = Collections.emptyList();
    // 需要另外保存的xml文件
    private List<EntityAjXml> entityAjXmls = Collections.emptyList();
    
    private int partNum;
    
    private int totalNum;
    
    public List<EntityAjXml> getEntityAjXmls() {
        return entityAjXmls;
    }

    public void setEntityAjXmls(List<EntityAjXml> entityAjXmls) {
        this.entityAjXmls = entityAjXmls;
    }

    public ZipFileData(String zipFilePath, String taskId, List<FileData> fileData) {
        this(zipFilePath, taskId, fileData, null);
    }
    
    public ZipFileData(String zipFilePath, String taskId, List<FileData> fileData, List<FileData> errFileData) {
        super();
        this.zipFilePath = zipFilePath;
        this.taskId = taskId;
        this.fileData = fileData;
        this.errFileData = errFileData;
        
        String path = zipFilePath.replaceAll("\\\\", "/");
        int li = path.lastIndexOf("/");
        if (li > -1) {
            this.zipFileName = path.substring(li + 1, path.length());
            String[] nameParts = zipFileName.split("_");
            this.corpId = Integer.valueOf(nameParts[1]);
            this.dataType = nameParts[0];
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            
            try {
                this.exportTime = sdf.parse(nameParts[2]);
            } catch (ParseException e) {
                throw new IllegalStateException("无法从文件名中解析出导出时间，[" + zipFileName + "]");
            }
        }
    }
    
    public Date getExportTime() {
        return exportTime;
    }

    public int getPartNum() {
        return partNum;
    }

    public void setPartNum(int partNum) {
        this.partNum = partNum;
    }

    public int getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }

    public String getZipFileName() {
        return zipFileName;
    }

    public String getZipFilePath() {
        return zipFilePath;
    }

    public int getCorpId() {
        return corpId;
    }

    public String getDataType() {
        return dataType;
    }

    public String getTaskId() {
        return taskId;
    }

    public List<FileData> getFileData() {
        return fileData;
    }

    public List<EntityFile> getEntityFiles() {
        return entityFiles;
    }

    public void setEntityFiles(List<EntityFile> entityFiles) {
        this.entityFiles = entityFiles;
    }

    public List<FileData> getErrFileData() {
        if (errFileData == null) {
            return Collections.emptyList();
        }
        return errFileData;
    }
  
}
