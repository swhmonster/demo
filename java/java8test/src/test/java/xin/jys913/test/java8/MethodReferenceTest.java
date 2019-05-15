package xin.jys913.test.java8;

import org.junit.Assert;
import org.junit.Test;
import xin.jys913.test.java8.method.Cat;
import xin.jys913.test.java8.method.MethodReferenceHelper;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/27 21:46:04
 */
public class MethodReferenceTest {

    @Test
    public void classNew() {
        Assert.assertNotNull(MethodReferenceHelper.create(Cat::new));
        Assert.assertNotNull(MethodReferenceHelper.create(() -> new Cat()));
    }

    @Test
    public void classStaticMethod() {
        MethodReferenceHelper.excute("hello, 我在外面!!", System.out::println);
        MethodReferenceHelper.excute("hello, 我在外面!!", m -> System.out.println(m));
        MethodReferenceHelper.excute("hello, 我在里面!!", Cat::voice);
        MethodReferenceHelper.excute("hello, 我在里面!!", m -> Cat.voice(m));
    }

    @Test
    public void classMethod() {
        List<String> names = new ArrayList<>();
        names.add("Google");
        names.add("Runoob");
        names.add("Taobao");
        names.add("Baidu");
        names.add("Sina");
        System.out.println(names.stream().map(String::toUpperCase).collect(Collectors.toList()));
        System.out.println(names.stream().map(e->e.toUpperCase()).collect(Collectors.toList()));
    }

    @Test
    public void instanceMethod() {
        Cat cat = new Cat();
        List<String> names = new ArrayList<>();
        names.add("Google");
        names.add("Runoob");
        names.add("Taobao");
        names.add("Baidu");
        names.add("Sina");
        names.forEach(cat::say);
        names.forEach(m->cat.say(m));
    }
}
