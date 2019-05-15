package com.thunisoft.parse09xml.parsing.converter;

import org.apache.commons.codec.binary.Base64;

public class Str2File implements Converter {

    public Object convert(String val,int maxLen) {
        return Base64.decodeBase64(val);
    }

}
