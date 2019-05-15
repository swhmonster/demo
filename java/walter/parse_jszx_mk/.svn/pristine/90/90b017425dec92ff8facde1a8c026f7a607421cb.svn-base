package com.thunisoft.parse09xml.util;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

import com.thunisoft.parse09xml.bean.StateTimer;


public class TimeUtil {
    
    /**
     * 将时间格式化成便于人读取的格式， 1d 2h 3m 5s 123ms
     * @param time 时间的毫秒表示
     * @return
     */
    public static String format(long time) {
        
        long ms = time / 1000 / 1000;
        
        if (ms == 0) {
            return "0ms";
        }
        
        long oms = ms % 1000;
        long s = ms / 1000;
        long os = s % 60;
        long m = s / 60;
        long om = m % 60;
        long h = m / 60;
        
        StringBuilder sb = new StringBuilder();
        boolean appAfter = false;
        if (h > 0) {
            if (h < 10) {
                sb.append(" ");
            }
            sb.append(" ").append(h).append("h");
            appAfter = true;
        }
        if (om > 0 || appAfter) {
            if (om < 10) {
                sb.append(" ");
            }
            sb.append(" ").append(om).append("m");
            appAfter = true;
        }
        
        if (os > 0 || appAfter) {
            if (os < 10) {
                sb.append(" ");
            }
            sb.append(" ").append(os).append("s");
            appAfter = true;
        }
        if (oms > 0 || appAfter) {
            if (oms < 10) {
                sb.append(" ");
            }
            if (oms < 100) {
                sb.append(" ");
            }
            sb.append(" ").append(oms).append("ms");
        }
        
        return sb.toString(); 
    }
    
    /**
     * 获取时间格式为YYYYMMDD的日期
     * @param date
     * @return
     */
    public static String getYYYYMMDDTimeStr(Date date){
    	Calendar ca = Calendar.getInstance();
    	ca.setTime(date);
    	String year = ca.get(Calendar.YEAR) + "";
    	int mon = ca.get(Calendar.MONTH) + 1;
    	String monStr = (mon < 10)?("0" + mon):String.valueOf(mon);
    	int day =  ca.get(Calendar.DAY_OF_MONTH);
    	String dayStr = (day < 10)?("0" + day):String.valueOf(day);
    	return year + monStr + dayStr;
    }
    
    public static long getYYYYMMDDTime(String yyyymmddhhmmss){
    	Calendar ca = Calendar.getInstance();
    	int year = Integer.valueOf(yyyymmddhhmmss.substring(0, 4));
    	int month = Integer.valueOf(yyyymmddhhmmss.substring(4, 6)) - 1;
    	int date = Integer.valueOf(yyyymmddhhmmss.substring(6, 8));
    	int hourOfDay = Integer.valueOf(yyyymmddhhmmss.substring(8, 10));
    	int minute = Integer.valueOf(yyyymmddhhmmss.substring(10, 12));
    	int second = Integer.valueOf(yyyymmddhhmmss.substring(12, 14));
    	ca.set(year, month, date, hourOfDay, minute, second);
    	return ca.getTimeInMillis();
    }
    
	/**
	 * 
	 * @param sd
	 * @param ed
	 * @return
	 */
	public static int getDays(Date sd, Date ed) {
		return (int) ((ed.getTime() - sd.getTime()) / (3600 * 24 * 1000));
	}
    
	/**
	 * 将分钟转换成纳秒
	 * @param mm
	 * @return
	 */
	public static long changeMmToNm(long mm){
	    return mm * 60 * 1000 * 1000 * 1000;
	}
    public static void main(String[] args) {
    	System.out.println(getYYYYMMDDTime("20131230192508"));
//    	Calendar ca = Calendar.getInstance();
//    	ca.set(2014, 2, 25);
//    	System.err.println(getDays(new Date(), ca.getTime()));
//        System.out.println(TimeUtil.format(99 * 1000 * 1000));
//        System.out.println(TimeUtil.format(1099 * 1000 * 1000));
//        System.out.println(TimeUtil.format(3609999L * 1000 * 1000));
//        System.out.println(TimeUtil.format(24L * 3600 * 1000 * 1000 * 1000));
    }
    
    public static Timestamp getStateTime(boolean runAsDTC){
        if(runAsDTC){
            return new Timestamp(StateTimer.getInstance().getStartTime().getTime());
        }else{
            return new Timestamp(System.currentTimeMillis());
        }
    }
    
}
