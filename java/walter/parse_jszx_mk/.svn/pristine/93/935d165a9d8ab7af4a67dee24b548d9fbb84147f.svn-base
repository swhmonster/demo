package com.thunisoft.parse09xml.persistence;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.bean.EntityFile;
import com.thunisoft.parse09xml.bean.FileData;
import com.thunisoft.parse09xml.bean.TableData;
import com.thunisoft.parse09xml.bean.TableDescriptor;
import com.thunisoft.parse09xml.bean.ZipFileData;
import com.thunisoft.parse09xml.parsing.converter.Str2Int;
import com.thunisoft.parse09xml.util.TimeUtil;
import com.thunisoft.writstore.Writ;
import com.thunisoft.writstore.WritProp;
import com.thunisoft.writstore.hbase98.HBaseWritStore;

/**
 * @ClassName: HbaseWriteStoreService
 * @Description: 文书存储到HBase数据库
 * @author: chendj
 * @date: 2015-1-23
 * 
 */
public class HbaseWriteStoreService {
    private static Logger logger = LoggerFactory
            .getLogger(HbaseWriteStoreService.class);

    private ConfigManager configManager;

    private HBaseWritStore hBaseWritStore;

    public HbaseWriteStoreService(ConfigManager configManager) {
        this.configManager = configManager;
        long start = System.nanoTime();
        try {
            String sTable = configManager.getConfig("writstore.hbase.table")
                    .trim();
            hBaseWritStore = new HBaseWritStore(sTable);
        } catch (IOException e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        logger.info("create HbaseWriteStoreService end, cost : {}",
                TimeUtil.format(System.nanoTime() - start));
    }

    /**
     * @Title: saveFileDate2HBase
     * @Description: 保存文件到HBase
     * @return void
     * @throws
     */
    public void saveFileDate2HBase(ZipFileData zfd) {
        /** 如果没有实体文件，返回 */
        if (zfd.getEntityFiles().isEmpty()) {
            return;
        }
        long start = System.nanoTime();
        try {
            Writ[] writs = getWriteArrary(zfd);
            hBaseWritStore.put(writs);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            return;
        }
        logger.info("saveFileDate2HBase [{}] end, cost : {}",
                zfd.getZipFilePath(),
                TimeUtil.format(System.nanoTime() - start));
    }

    /**
     * @Title: getWriteArrary
     * @Description: 获取Writ数组
     * @return Writ[]
     * @throws
     */
    private Writ[] getWriteArrary(ZipFileData zfd) {
        long start = System.nanoTime();
        int size = zfd.getEntityFiles().size();
        /** 数组个数 */
        Writ[] writs = new Writ[size];
        int i = 0;
        for (EntityFile ef : zfd.getEntityFiles()) {
            Writ w = new Writ();
            w.setRowId(ef.getPath());
            w.setContent(ef.getData());
            /** 设置文书其它属性 */
            setWritProps(w, zfd);
            writs[i] = w;
            ++i;
        }
        logger.info("getWriteArrary [{}] end, cost : {}", zfd.getZipFilePath(),
                TimeUtil.format(System.nanoTime() - start));
        return writs;
    }

    /**
     * @Title: getColumnVaule
     * @Description: 获取某列值
     * @return String
     * @throws
     */
    private String getColumnVaule(Object[] row, TableDescriptor tds,
            String columnName) {
        if (tds.getColumnIndex(columnName) > -1) {
            return String.valueOf(row[tds.getColumnIndex(columnName)]);
        }
        return "";
    }

    /**
     * @Title: setWritProp
     * @Description: 设置WritProp属性值
     * @return void
     * @throws
     */
    private void addWritProp(List<WritProp> writProps, String key, String value) {
        WritProp wp = new WritProp();
        wp.setKey(key);
        wp.setValue(value);
        writProps.add(wp);
    }

    /**
     * @Title: setWslb
     * @Description: 设置文书列表
     * @return void
     * @throws
     */
    private void addWslb(List<WritProp> writProps, FileData fd, String fileName) {
        /** 文书序号 */
        Integer xh = Integer.valueOf(fileName.substring(0,
                fileName.lastIndexOf(".")));
        /** 文书表，案件主表后加WS **/
        TableData td = fd.getTableData().get(fd.getRootTableName() + "WS");
        TableDescriptor tds = configManager.getTableDescs().get(
                td.getTableName());
        for (Object[] row : td.getData()) {
            /** 文书序号唯一 */
            if (xh == new Str2Int().convert(String.valueOf(row[tds
                    .getColumnIndex(WritConsts.FIELD_N_XH)]),0)) {
                /** 文书类别属性 */
                addWritProp(writProps, WritConsts.WS_WSLB,
                        getColumnVaule(row, tds, WritConsts.FIELD_N_WSLB));
                break;
            }
        }
    }

    /**
     * @Title: setWritProp
     * @Description:设置文书其它属性
     * @return void
     * @throws
     */
    private void setWritProps(Writ w, ZipFileData zfd) {
        String[] rowids = w.getRowId().split("/");
        /** 案件标识 */
        Long ajbs = Long.valueOf(rowids[rowids.length - 2]);
        /** html文书名称 */
        String fileName = rowids[rowids.length - 1];
        List<WritProp> writProps = new ArrayList<WritProp>();
        for (FileData fd : zfd.getFileData()) {
            if (ajbs.equals(fd.getId())) {
                /** 案件主表 */
                TableData td = fd.getTableData().get(fd.getRootTableName());
                TableDescriptor tds = configManager.getTableDescs().get(
                        td.getTableName());
                /** 案件主表只有一条记录 */
                Object[] row = td.getData().get(0);
                /** 案号 **/
                addWritProp(writProps, WritConsts.WS_AH,
                        getColumnVaule(row, tds, WritConsts.FIELD_C_AH));
                /** 审判程序 **/
                addWritProp(writProps, WritConsts.WS_SPCX, fd.getType());
                /** 结案案由 **/
                addWritProp(writProps, WritConsts.WS_JAAY,
                        getColumnVaule(row, tds, WritConsts.FIELD_N_AY));
                /** 立案案由 */
                addWritProp(writProps, WritConsts.WS_LAAY,
                        getColumnVaule(row, tds, WritConsts.FIELD_N_LAAY));
                /** 设置文书类别 */
                addWslb(writProps, fd, fileName);
                /** 增加创建时间属性 ***/
                addWritProp(writProps, WritConsts.WS_UPDATETIME,
                        String.valueOf(System.currentTimeMillis()));
                break;
            }
        }
        w.setWritProps(writProps.toArray(new WritProp[0]));
    }

}
