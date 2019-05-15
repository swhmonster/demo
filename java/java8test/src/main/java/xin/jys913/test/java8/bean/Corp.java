package xin.jys913.test.java8.bean;

import lombok.Builder;
import lombok.Data;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/28 18:13:11
 */
@Data
@Builder
public class Corp {

    private String name;

    private Dept dept;
}
