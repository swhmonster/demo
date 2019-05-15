package xin.jys913.test.java8.animal;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/27 20:37:09
 */
public interface IHorse {

    void climb();

    default void voice(){
        System.out.println("嘶---");
    }
}
