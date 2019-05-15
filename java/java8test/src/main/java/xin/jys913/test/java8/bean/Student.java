package xin.jys913.test.java8.bean;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/28 20:00:27
 */
@Data
@AllArgsConstructor
public class Student {
    int no;
    String name;
    String sex;
    float height;
}
