package xin.jys913.test.java8.animal;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/27 20:45:17
 */
public class Mule implements IDonkey,IHorse {
    @Override
    public void run() {

    }

    @Override
    public void voice() {
        IDonkey.super.voice();

    }

    @Override
    public void climb() {
    }
}
