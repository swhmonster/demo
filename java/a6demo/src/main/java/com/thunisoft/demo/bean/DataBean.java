package com.thunisoft.demo.bean;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.Column;

/**
 * @author swh
 * @date 2019/6/9 21:00
 */
@Data
@AllArgsConstructor
public class DataBean {
    @Column(name="cBh")
    private String cBh;

    @Column(name="cWsmc")
    private String cWsmc;
}
