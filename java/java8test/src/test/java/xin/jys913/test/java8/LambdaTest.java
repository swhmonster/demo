package xin.jys913.test.java8;

import org.junit.Assert;
import org.junit.Test;
import xin.jys913.test.java8.calculator.ICalculator;
import xin.jys913.test.java8.calculator.IPower;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/27 21:12:00
 */
public class LambdaTest {


    @Test
    public void calculate1(){
        ICalculator<Integer> plus = (x,y)->x+y;
        Assert.assertEquals(Integer.valueOf(5),plus.calculate(2,3));
    }

    @Test
    public void calculate2(){
        ICalculator<Integer> multiplyAndPlus = (x,y)->{
            int temp = x*y;
            return temp+y;
        };
        Assert.assertEquals(Integer.valueOf(8),multiplyAndPlus.calculate(2,3));
    }

    @Test
    public void square(){
        IPower<Integer> power = x->x*x*x;
        Assert.assertEquals(Integer.valueOf(27),power.power(3));
    }
}
