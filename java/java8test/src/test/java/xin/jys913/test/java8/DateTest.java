package xin.jys913.test.java8;

import org.junit.Test;

import java.time.*;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/27 19:51:37
 */
public class DateTest {

    @Test
    public void localTest(){
        //当前时间
        LocalDateTime currentTime = LocalDateTime.now();
        System.out.println("当前时间为："+currentTime);
        // 2018-11-19
        LocalDate date3 = LocalDate.of(2018, Month.NOVEMBER, 19);
        System.out.println("日期为: " + date3);
        // 解析字符串
        LocalTime date5 = LocalTime.parse("11:11:11");
        System.out.println("解析的时间为: " + date5);
    }

    @Test
    public void zonedTest(){
        //美国芝加哥
        ZoneId id = ZoneId.of("America/Chicago");
        System.out.println("ZoneId: " + id);
        //当前时区
        ZoneId currentZone = ZoneId.systemDefault();
        System.out.println("当期时区: " + currentZone);
        // 解析带时区的日期
        ZonedDateTime datetime = ZonedDateTime.parse("2018-11-19T10:12:30+07:00[America/Chicago]");
        System.out.println("时区为: " + datetime);
    }

}
