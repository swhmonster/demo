package xin.jys913.test.java8;

import org.junit.Test;
import xin.jys913.test.java8.calculator.Calculator;
import xin.jys913.test.java8.calculator.ICalculator;
import xin.jys913.test.java8.method.Cat;

import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.temporal.ChronoUnit;

/**
 *@author prince_913
 *@date 2018/12/4 1:10
 *CopyRight @2018
 **/
public class MoreTest {

    @Test
    public void methodReference(){
        ICalculator<Integer> f = Calculator::minus;
        System.out.println(f.calculate(3,1));
    }

    @Test
    public void methodReference2(){
        ICalculator<Cat> f = (cat, cat2) -> cat.friend(cat2);
        Cat c = new Cat("制杖");
        Cat c2 = new Cat("贩剑");
        f.calculate(c,c2);
    }

    @Test
    public void date(){

        LocalDateTime d1 = LocalDateTime.of(2018,12,1,12,12,22);
        LocalDateTime d2 = LocalDateTime.of(2018,11,1,12,12,21);
        System.out.println(d1.isAfter(d2));
    }

    @Test
    public void date2(){
        LocalDate d1 = LocalDate.of(2018,11,1);
        LocalDate d2 = LocalDate.of(2018,1,2);
        Period a = Period.between(d2,d1);
        System.out.println(a.getYears()+" "+a.getMonths()+" "+a.getDays());
    }

    @Test
    public void date3(){
        LocalDateTime d1 = LocalDateTime.of(2018,12,1,12,12,22);
        LocalDateTime d2 = LocalDateTime.of(2017,11,1,12,12,21);
        System.out.println(Duration.between(d1,d2).getNano());
    }

    @Test
    public void date4(){
        LocalDateTime d2 = LocalDateTime.of(2018,12,1,12,12,22);
        LocalDateTime d1 = LocalDateTime.of(2018,1,1,12,12,21);
        System.out.println(ChronoUnit.DAYS.between(d1,d2));
        System.out.println(ChronoUnit.MONTHS.between(d1,d2));
    }
}
