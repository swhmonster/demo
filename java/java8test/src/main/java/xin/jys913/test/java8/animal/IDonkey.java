package xin.jys913.test.java8.animal;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/27 20:35:58
 */
public interface IDonkey {

    void run();

    default void voice(){
        System.out.println("蔼—呃——");
    }

    default void isAnimal(){
        System.out.println("yes");
    }
}
