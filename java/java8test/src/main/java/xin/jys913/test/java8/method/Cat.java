package xin.jys913.test.java8.method;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/27 21:51:13
 */
public class Cat {

    private String name;

    public Cat(){
        System.out.println("啊啊啊啊啊啊啊啊");
    }


    public Cat(String name){
        this.name=name;
    }

    public static void voice(String msg){
        System.out.println(msg);
    }

    public void run(){
        System.out.println("runing");
    }


    public void say(String msg){
        System.out.println(msg);
    }


    public String what(){
        return "什么？！";
    }

    public Cat friend(Cat cat){
        System.out.println(cat.name);
        return cat;
    }


    public static String whatIt(){
        return "什么啊？！";
    }

}
