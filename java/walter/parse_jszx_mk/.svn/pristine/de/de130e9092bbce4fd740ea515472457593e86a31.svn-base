package com.thunisoft.parse09xml;

import com.thunisoft.parse09xml.dtc.DrLogic;
import com.thunisoft.rmfysjfxpt.dtc.DTCLogic;
import com.thunisoft.rmfysjfxpt.dtc.IAppLogic;


public class Main {
    static DTCLogic dtcl = new DTCLogic();
    public static void main(String[] args) {
        ConfigManager config = new ConfigManager();
        config.loadPropConfigs(args);
        boolean runAsDTC = Boolean.valueOf(config.getConfig("option.runAsDTC"));
        if(!runAsDTC){
            new MainProcess().process(args,null);
        }else{
            IAppLogic iapl = new DrLogic();
            while (true) {// 循环触发
                dtcl.Logic(iapl);
            }
        }
    }
}
