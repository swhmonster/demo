package com.thunisoft.parse09xml.parsing.converter;

import java.io.UnsupportedEncodingException;

import org.apache.commons.codec.binary.Base64;

public class Base64Decoder implements Converter{
    
    public Object convert(String val,int maxLen) {
        String result = val;
        try {
            result = new String(Base64.decodeBase64(val), "UTF-8");
            //guoxr 2015-1-21 BB�����ڷ�����ж������VERCHAR(1500)������ʱ�����ݽضϵ����� 
            return truncateString(result, maxLen);
        } catch (UnsupportedEncodingException e) {
            return val;
        }
    }
    
    private String truncateString(String value, int maxLength) {
        int len = 0;
        StringBuilder sb = new StringBuilder();
        //����UTF8���룬����Ϊ3���ֽ�
        for (char ch : value.toCharArray()) {
            // ���Ǽ��˵�uni�ַ�
            if (ch >= '\uF900' && ch <= '\uFAD9') { //CJK���ݺ�����
                len += 3;
            } else if (ch >= '\u4E00' && ch <= '\u9FFF') { //CJKͳһ������
                len += 3;
            } else if (ch >= '\u3400' && ch <= '\u4DB5') { //CJKͳһ���� ����A
                len += 3;
            } else if (ch >= '\uE000' && ch <= '\uF8FF') { //PUA����
                len += 3;
            } else if (Character.isHighSurrogate(ch)) { // ��Ҫ2��char���ܱ����ַ� CJKͳһ���� ����B��C��D
                len += 6;
            } else if (Character.isLowSurrogate(ch)) { // ��Ҫ2��char���ܱ����ַ��һ���ַ���㳤��
                len += 0;
            } else {
                len++;
            }
            if (len > maxLength) {
                break;
            }
            sb.append(ch);
        }
        
        return sb.toString();
    }
    
    public static void main(String[] args) {
    	Base64Decoder b = new Base64Decoder();
    	String val = "5rGJ5a2X5LqU55m+5Liq5rGJ5a2X5LqU55m+5Liq5rGJ5a2X5LqU55m+5Liq5rGJ5a2X5LqU55m+5LiqYWJjZGVmZ2hpamtsbW5vMeWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4quaxieWtl+S6lOeZvuS4qg==";
		System.out.println(b.convert(val,1500));
	}
    
}
