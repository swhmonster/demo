package com.thunisoft.parse09xml.parsing.converter;


public class Str2Money implements Converter{
    
    public Object convert(String val,int maxLen) {
        return Double.valueOf(val);
    }

}
