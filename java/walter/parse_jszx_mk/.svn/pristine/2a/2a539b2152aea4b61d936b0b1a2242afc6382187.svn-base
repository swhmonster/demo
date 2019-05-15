package com.thunisoft.parse09xml.persistence;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.bean.EntityFile;
import com.thunisoft.parse09xml.bean.FileData;
import com.thunisoft.parse09xml.bean.NeedTransFileColumn;
import com.thunisoft.parse09xml.bean.TableData;
import com.thunisoft.parse09xml.bean.TableDescriptor;
import com.thunisoft.parse09xml.bean.ZipFileData;
import com.thunisoft.parse09xml.util.TimeUtil;

public class SaveFileService {
    
    private static Logger logger = LoggerFactory.getLogger(SaveFileService.class);
    
    private ConfigManager configManager;
    
    public SaveFileService(ConfigManager configManager) {
        super();
        this.configManager = configManager;
    }

    public ZipFileData extractFile(ZipFileData zfd) {
        long start = System.nanoTime();
        List<EntityFile> entityFiles = new ArrayList<EntityFile>();
        for (FileData fd : zfd.getFileData()) {
            if (!fd.isErrorOrIgnore()) {
                entityFiles.addAll(extractFile(fd));
            }
        }
        logger.info("[{}], 抽取文书数据完毕, 耗时:{}", zfd.getZipFileName(), TimeUtil.format(System.nanoTime() - start));
        zfd.setEntityFiles(entityFiles);
        return zfd;
    }
    
    public List<EntityFile> extractFile(FileData fd) {
        Map<String, List<NeedTransFileColumn>> nts = configManager.getNeedTransFileColumns();
        // 由于可能一个案件类型下的案件依然很多，需要将案件按照案件编号范围分区
        // 目录结构：所在省高院编号/法院编号/案件类型/1-1023散列/案件标识/x.html
        List<EntityFile> entityFiles = new ArrayList<EntityFile>();
        int corpId = getProvinceCorpId(fd.getCorpId());
        String filePathPrefix = "/" + corpId + "/" + fd.getCorpId() + "/" + fd.getType() + "/" + (fd.getId() % 1024) + "/" + fd.getId() + "/";
        for (Entry<String, List<NeedTransFileColumn>> e : nts.entrySet()) {
            String tableName = e.getKey();
            List<NeedTransFileColumn> cols = e.getValue();
            TableData td = null;
            if(fd.getTableData()!= null){
                td = fd.getTableData().get(tableName);
                }
            TableDescriptor desc = configManager.getTableDescs().get(tableName);
            if (td != null) {
                entityFiles.addAll(extractFile(filePathPrefix, td, desc, cols));
            } 
        }
        return entityFiles;
    }

    /**
     * 根据法院id获取省法院id
     * @param corpId
     * @return
     */
    private int getProvinceCorpId(int corpId) {
		Map<Integer, String> corps = configManager.getCorps();
		Map<String, Integer> corpsRev = configManager.getCorpsRev();
		String fbdm = corps.get(corpId);
		if (StringUtils.isBlank(fbdm)) {
			logger.error("[%d]不是有效的法院编号。", corpId);
			return 0;
		}
		String hiFbdm = fbdm.substring(0, 1) + "00";
		return corpsRev.get(hiFbdm);
	}

	private List<EntityFile> extractFile(String filePathPrefix, TableData data, TableDescriptor desc, List<NeedTransFileColumn> cols) {
        int i = 1;
        List<EntityFile> entityFiles = new ArrayList<EntityFile>();
        for (Object[] row : data.getData()) {
            for (NeedTransFileColumn col : cols) {
                String fileName = filePathPrefix + i + ".html";
                int index = desc.getColumnIndex(col.getColumnName());
                byte[] d = (byte[])row[index];
                if (d == null) {
                    continue;
                }
                row[index] = fileName;
//                index = desc.getColumnIndex("N_LB");
//                Integer wslb = (Integer) row[index];
//                entityFiles.add(new EntityFile(fileName, d, wslb));
                entityFiles.add(new EntityFile(fileName, d, null));
                i++;
            }
        }
        return entityFiles;
    }
	
    public void saveFile(ZipFileData zfd) {
        if (zfd.getEntityFiles().isEmpty()) {
            return;
        }
        long start = System.nanoTime();
        /** 如果配置了报错到本地 */
        if (Boolean.valueOf(configManager.getConfig("config.WS.saveTolocal"))) {
            for (EntityFile ef : zfd.getEntityFiles()) {
                saveFile(ef.getPath(), ef.getData());
            }
        }
        // 及时释放内存
        zfd.getEntityFiles().clear();
        logger.info("[{}], 保存文书完毕, 耗时:{}", zfd.getZipFileName(), TimeUtil.format(System.nanoTime() - start));
    }

    private void saveFile(String fileName, byte[] d) {
        fileName = configManager.getEntityFileSavePath() + fileName;
        File file = new File(fileName);
        file.getParentFile().mkdirs();
        OutputStream os = null;
        try {
            os = new FileOutputStream(file);
            os.write(d);
        } catch (FileNotFoundException e) {
            logger.error(e.getMessage(), e);
        } catch (IOException e) {
            logger.error(e.getMessage(), e);
        } finally {
            if (os != null) {
                try {
                    os.close();
                } catch (IOException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }
    }
    

}
