package xin.jys913.test.java8.bean;

import lombok.Builder;
import lombok.Data;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/28 18:13:20
 */
@Data
@Builder
public class Dept {

    private String name;

    private User User;
}
