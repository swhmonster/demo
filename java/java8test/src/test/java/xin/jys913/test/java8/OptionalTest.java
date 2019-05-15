package xin.jys913.test.java8;

import org.junit.Test;
import xin.jys913.test.java8.bean.Corp;
import xin.jys913.test.java8.bean.Dept;
import xin.jys913.test.java8.bean.User;

import java.util.Optional;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/28 18:04:09
 */
public class OptionalTest {
    Corp corp = Corp.builder().name("華宇")
            .dept(Dept.builder().name("南京研發中心").User(User.builder().name("張三").build()).build()).build();

    Dept dept = Dept.builder().name("北京研發中心").User(User.builder().name("李四").build()).build();

    {

        System.out.println("初始：" + corp);
        System.out.println("初始：" + dept);
    }

    @Test
    public void optional() {
        if (corp != null) {
            if (!corp.getName().isEmpty()) {
                Dept dept = corp.getDept();
                if (dept != null) {
                    System.out.println(dept);
                }
            }
        }
        Optional.ofNullable(corp).filter(e -> !e.getName().isEmpty()).map(Corp::getDept).ifPresent(System.out::println);
    }

    @Test
    public void optional1() {
        String nameStr;
        if(corp!=null){
            if(!corp.getName().isEmpty()){
                Dept dept = corp.getDept();
                if(dept!=null){
                    User user = dept.getUser();
                    if(user!=null){
                        String name = user.getName();
                        if (name!=null){
                            nameStr=name;
                        }else{
                            nameStr="未知";
                        }
                    }else{
                        nameStr="未知";
                    }
                }else{
                    nameStr="未知";
                }
            }else{
                nameStr="未知";
            }
        }
        System.out.println(
                Optional.ofNullable(corp).filter(e -> !e.getName().isEmpty()).map(Corp::getDept).map(Dept::getUser)
                        .map(User::getName).orElse("未知"));
    }

    @Test
    public void optional2() {
        System.out.println(
                Optional.ofNullable(dept).flatMap(e -> Optional.of(Corp.builder().name("信息").dept(e).build())).get());
    }
}
