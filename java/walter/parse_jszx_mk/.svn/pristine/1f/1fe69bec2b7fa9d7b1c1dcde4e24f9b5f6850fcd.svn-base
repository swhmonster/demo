package com.thunisoft.parse09xml.parsing.converter;

import java.text.DecimalFormat;
import java.text.ParseException;

/**
 * Long2Numeric
 * @author majianpeng
 * 2016-5-3
 * @version 1.0
 *
 */
public class Long2Numeric implements Converter{

    public Object convert(String val, int maxLen) {
        Long num = 0l;
        DecimalFormat dc = new DecimalFormat();
        try {
             num = (Long)dc.parse(val);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return num;
    } 
 

}
