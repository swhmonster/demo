package com.thunisoft.parse09xml.parsing.converter;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Str2Date implements Converter {
    
    private static Logger logger = LoggerFactory.getLogger(Str2Date.class); 

    public Object convert(String val,int maxLen) {
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
        try {
            return new Timestamp(sdf1.parse(val).getTime());
        } catch (ParseException e) {
        	try{
        		return new Timestamp(sdf2.parse(val).getTime());
        	}catch (Exception e1) {
        		logger.error("Conver string to date faild. data : [" + val + "], pattern : [yyyy-MM-dd]");
        		return null;
			}
        }
    }

}
