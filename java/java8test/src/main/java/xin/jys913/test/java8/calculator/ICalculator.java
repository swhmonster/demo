package xin.jys913.test.java8.calculator;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/27 21:08:32
 */
@FunctionalInterface
public interface ICalculator<T> {

    T calculate(T x,T y);


}
