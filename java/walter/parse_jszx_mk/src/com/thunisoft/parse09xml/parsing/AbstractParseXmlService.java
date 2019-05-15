package com.thunisoft.parse09xml.parsing;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.apache.tools.zip.ZipEntry;
import org.apache.tools.zip.ZipFile;
import org.dom4j.Element;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.bean.EntityAjXml;
import com.thunisoft.parse09xml.bean.FileData;
import com.thunisoft.parse09xml.bean.ZipFileData;
import com.thunisoft.parse09xml.persistence.AJConsts;
import com.thunisoft.parse09xml.persistence.Constant;
import com.thunisoft.parse09xml.util.TimeUtil;
import com.thunisoft.parse09xml.util.ZipTypeUtil;

/**
* @ClassName: AbstractParseXmlService
* @Description: 抽象的xml解析服务类
* @author: chendj
* @date: 2015-1-16
*
*/
public abstract class AbstractParseXmlService {
    
  private static Logger logger = LoggerFactory.getLogger(ParseXmlService.class);
    
    private ConfigManager configManager;
    
    private XmlValidator validator;

    /**
     * 构造方法
     * @param configManager
     */
    public AbstractParseXmlService(ConfigManager configManager) {
        this.configManager = configManager;
        this.validator = new XmlValidator(configManager);
        
    }
    //将案件xml转化成二进制文件
    public byte[] entityAjXmlToByte(ZipFile zipFile, ZipEntry zipEntry){
        InputStream is = null;
        ByteArrayOutputStream os = null;
        try {
            is = zipFile.getInputStream(zipEntry);
            os = new ByteArrayOutputStream();
            int i = 0;
            while((i=is.read())!=-1){
                os.write(i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return os.toByteArray();
    }
    //设置ZipFileData属性
    public ZipFileData parseZipFile(File file, String taskId) {
        long start = System.nanoTime();
        ZipFile zipFile = null;
        String zipName = file.getName();
        IXmlParser parser = getParser(zipName);
        //在zfd中设置案件数据xml信息
        List<EntityAjXml> entityAjXmls = new ArrayList<EntityAjXml>();
        try {
            zipFile = new ZipFile(file);
            List<FileData> zfd = new ArrayList<FileData>(1000);
            List<FileData> errZfd = new ArrayList<FileData>();
            for (Enumeration<? extends ZipEntry> zipEntrys = zipFile.getEntries(); zipEntrys.hasMoreElements();) {
                ZipEntry zipEntry = zipEntrys.nextElement();
                String xmlName = zipEntry.getName();
                if(!checkXmlName(zipName, xmlName)){
                    continue;
                }
                FileData fd = createFileData(zipName, xmlName);
                if (checkFileName(fd)) {
                    Element rootEl = validateAndReadXml(zipFile, zipEntry, fd);
                    if(rootEl != null){
                        try {
                            parser.parse(rootEl, fd);
                            String filePathPrefix = null;
                            //设置EntityAjXml属性
                            EntityAjXml entityAjXml = null;
                            if(ZipTypeUtil.ZIP_TYPE_DL.equals(fd.getZipFileName().split("_")[0])){
                                String uuid = UUID.randomUUID().toString();
                                filePathPrefix = "del_" + uuid.replaceAll("-", "");
                                entityAjXml = new EntityAjXml(filePathPrefix, entityAjXmlToByte(zipFile, zipEntry), xmlName);
                            } else{
                                filePathPrefix = fd.getType() + "_" + fd.getId();
                                entityAjXml = new EntityAjXml(filePathPrefix, entityAjXmlToByte(zipFile, zipEntry), xmlName);
                            }
                            entityAjXmls.add(entityAjXml);
                        } catch (Exception e) {
                            String msg = String.format("[%s]-[%s], xml文件解析失败, 错误信息: %s",
                                    zipName, 
                                    xmlName, 
                                    e.getMessage());
                            String glmsg = "文件名称不符合上报标准";
                            fd.setError(true);
                            fd.addErrorMessage(msg);
                            fd.addGlerrorMessage(glmsg);
                            fd.setStatus(Constant.XMLLOG_STATUS_XSD_FAILURE);
                            logger.error(msg, e);
                        }
                    }
                }
                if (fd.isError()) {
                    errZfd.add(fd);
                } else {
                    zfd.add(fd);
                }
            }
            logger.info("[{}], 解析完毕, 耗时：{}", zipName, TimeUtil.format(System.nanoTime() - start));
            ZipFileData zipFileData = new ZipFileData(file.getAbsolutePath(), taskId, zfd, errZfd);
            zipFileData.setEntityAjXmls(entityAjXmls);
            return zipFileData;
        } catch (FileNotFoundException e) {
            logger.error(e.getMessage(), e);
        } catch (IOException e) {
            logger.error(e.getMessage(), e);
        } finally {
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (IOException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }
        return null;
    }

    private Element validateAndReadXml(ZipFile zipFile, ZipEntry zipEntry, FileData fd) throws IOException {
        InputStream eis = null;
        Element rootEl;
        try {
            eis = zipFile.getInputStream(zipEntry);
            rootEl = validator.validateAndReadXml(eis, fd);
        } finally {
            if (eis != null) {
                eis.close();
            }
        }
        return rootEl;
    }

    /**
     * xml文件表示的单位id必须在zip文件表示的单位id的所在省
     * @param fd 
     * @return
     */
    private boolean checkFileName(FileData fd) {
        String zipFileName = fd.getZipFileName(); 
        String xmlName = fd.getFileName();
        Integer corpId_hi = Integer.valueOf(zipFileName.split("_")[1]);
        Integer corpId_low = fd.getCorpId();
        String fbdm_hi = configManager.getCorps().get(corpId_hi);
        if (StringUtils.isBlank(fbdm_hi)) {
            String msg = String.format("[%s]-[%s], 文件名校验失败, [%d]不是有效的法院编号。", zipFileName, xmlName, corpId_hi);
            String glmsg = "文件名称不符合上报标准";
            fd.setError(true);
            fd.addErrorMessage(msg);
            fd.addGlerrorMessage(glmsg);
            fd.setStatus(Constant.XMLLOG_STATUS_XSD_FAILURE);
            logger.error(msg);
            return false;
        }
        String fbdm_low = configManager.getCorps().get(corpId_low);
        if (StringUtils.isBlank(fbdm_low)) {
            String msg = String.format("[%s]-[%s], 文件名校验失败, [%d]不是有效的法院编号。", zipFileName, xmlName, corpId_low);
            String glmsg = "文件名称不符合上报标准";
            fd.setError(true);
            fd.addErrorMessage(msg);
            fd.addGlerrorMessage(glmsg);
            fd.setStatus(Constant.XMLLOG_STATUS_XSD_FAILURE);
            logger.error(msg);
            return false;
        }
        String sfjy = configManager.getCorpsSfjy().get(fbdm_low);
        
        
        if("1".equals(sfjy)){
            return true;
        }
        
        if (inSameProvince(fbdm_low, fbdm_hi)) {
            return true;
        }
        
        // 校验失败
        String msg = String.format("[%s]-[%s], 文件名校验失败, xml所在单位[%d-%s]和zip所在单位[%d-%s]不是同一省的法院。", 
                zipFileName, 
                xmlName, 
                corpId_low,
                fbdm_low, 
                corpId_hi,
                fbdm_hi);
        String glmsg = "文件名称不符合上报标准";
        fd.setError(true);
        fd.addErrorMessage(msg);
        fd.addGlerrorMessage(glmsg);
        fd.setStatus(Constant.XMLLOG_STATUS_XSD_FAILURE);
        logger.error(msg);
        
        return false;
    }

    /**
     * 判断两个法标代码在同一个省
     * @param low
     * @param hi
     * @return
     */
    private boolean inSameProvince(String low, String hi) {
        return low.substring(0, 1).equals(hi.substring(0, 1));
    }

    /**
     * 
     * @param fileName
     * @return
     */
    public abstract IXmlParser getParser(String fileName);
    
    private FileData createFileData(String zipFileName, String xmlFileName) {
        FileData fd = new FileData(zipFileName, xmlFileName);
        String[] strs = xmlFileName.split("\\.")[0].split("_");
        Long id = Long.valueOf(strs[1]);
        Integer corpId = Integer.valueOf(strs[1].substring(0, 4));
        if(strs[1].length()==19) {
            corpId = Integer.valueOf(strs[1].substring(1, 5));
        }
        if(StringUtils.isNumeric(strs[0]) && strs.length>2){
            fd.setType(AJConsts.WENSHU_INDEX);
        }else{
            fd.setType(strs[0]);
        }
        fd.setId(id);
        fd.setCorpId(corpId);
        return fd;
    }
    

    /**
     * 检查xml文件名是否合法
     * @param zipName
     * @param xmlName
     * @return
     */
    private boolean checkXmlName(String zipName, String xmlName) {
        String msg = String.format("[%s]-[%s], xml文件解析失败, 错误信息: %s",
                zipName, 
                xmlName, 
                "xml文件名不合法");
        if(!xmlName.contains("_")){
            logger.error(msg);
            return false;
        }
        String[] strs = xmlName.split("\\.")[0].split("_");
        Pattern p = Pattern.compile("[0-9]*");
        //xml名解析的数组，小于2个或者strs[1]的长度小于4或者strs[1]不是数字，都返回false
        if(strs.length < 2 || strs[1].length() < 4 || !p.matcher(strs[1]).matches()){
            logger.error(msg);
            return false;
        }
        return true;
    }
    
}