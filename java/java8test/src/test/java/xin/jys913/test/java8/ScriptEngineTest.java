package xin.jys913.test.java8;

import org.junit.Assert;
import org.junit.Test;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import java.time.LocalDate;
import java.util.Date;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/27 19:08:11
 */
public class ScriptEngineTest {

    @Test
    public void testScript() {
        try {
            ScriptEngine engine = new ScriptEngineManager().getEngineByName("nashorn");
            engine.eval("print('Hello World!');");
        } catch (Exception e) {
        }

    }

    @Test
    public void testScript2(){
        try {
        ScriptEngine engine = new ScriptEngineManager().getEngineByName("nashorn");
        Object result = engine.eval("1+2;");
        Assert.assertEquals(3,result);
    } catch (Exception e) {
    }
    }
}
