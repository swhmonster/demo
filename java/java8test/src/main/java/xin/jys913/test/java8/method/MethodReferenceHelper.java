package xin.jys913.test.java8.method;

import java.util.function.Consumer;
import java.util.function.Supplier;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/27 21:53:30
 */
public class MethodReferenceHelper {


    public static<T> T create(Supplier<T> supplier){
        return supplier.get();
    }


    public static<T> void excute(T t,Consumer<T> consumer){
        consumer.accept(t);
    }


}
