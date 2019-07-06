package com.thunisoft.demo.mapper;


import com.thunisoft.demo.bean.DataBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author swh
 * @date 2019/6/9 21:09
 */
public interface DataBeanMapper {
    List<DataBean> queryBh();

    int updataWs(@Param("bh") String bh,@Param("wsmc") String wsmc);

    int deleteWs(String bh);

    int addWs();
}
