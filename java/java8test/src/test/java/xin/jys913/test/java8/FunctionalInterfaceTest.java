package xin.jys913.test.java8;

import org.junit.Assert;
import org.junit.Test;
import xin.jys913.test.java8.calculator.ICalculator;
import xin.jys913.test.java8.calculator.IPower;
import xin.jys913.test.java8.method.Cat;

import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/28 12:23:38
 */
public class FunctionalInterfaceTest {

    @Test
    public void calculate1(){
        ICalculator<Integer> plus = new ICalculator<Integer>() {
            @Override
            public Integer calculate(Integer x, Integer y) {
                return x+y;
            }
        };
        Assert.assertEquals(Integer.valueOf(5),plus.calculate(2,3));
    }
    @Test
    public void calculate2(){
        ICalculator<Integer> plus = (x,y)->x+y;
        Assert.assertEquals(Integer.valueOf(5),plus.calculate(2,3));
        ICalculator<Integer> plus2 = new ICalculator<Integer>() {
            @Override
            public Integer calculate(Integer x, Integer y) {
                return x+y;
            }
        };
        Assert.assertEquals(plus.calculate(2,3),plus2.calculate(2,3));
    }

    @Test
    public void calculate3(){
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


    @Test
    public void runable(){
        new Thread(()->System.out.println("hello 呀!")).start();
        System.out.println("不hello~");
        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("hello~");
    }

    @Test
    public void supplier(){
        Supplier<Cat> cat = Cat::new;
        cat.get().say("哎呀呀呀");
        cat.get().say("哎呀呀呀2");
    }

    @Test
    public void consumer(){
        Consumer<String> cat = Cat::voice;
        cat.accept("啊！啊啊！！");
        cat.accept("啊！啊啊！！！");
    }


    @Test
    public void function(){
        Function<Cat,String> cat = Cat::what;
        Assert.assertEquals("什么？！",cat.apply(new Cat()));
    }

    @Test
    public void function2(){
        Function<Integer,Integer> result = x->x*2;
        Function<Integer,Integer> result2 = x->x*x;
        System.out.println(result.apply(2));
        System.out.println(result.compose(result2).apply(2));
        System.out.println(result.andThen(result2).apply(2));
    }

    @Test
    public void predicate(){
        Predicate<Integer> predicate = x->x>5;
        Assert.assertTrue(predicate.test(3));
    }
}
