package com.thunisoft.parse09xml.parsing;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.parsing.parser.AjXmlParser;
import com.thunisoft.parse09xml.parsing.parser.AqAjXmlParser;
import com.thunisoft.parse09xml.parsing.parser.DelAjXmlParser;
import com.thunisoft.parse09xml.parsing.parser.OrganXmlParser;
import com.thunisoft.parse09xml.util.ZipTypeUtil;

/**
 * 一个任务
 * 执行从zip文件解压、xml文件解析
 * @author xiegq
 *
 */
public class ParseXmlService extends AbstractParseXmlService{
    
    private Map<String, IXmlParser> parsers = new ConcurrentHashMap<String, IXmlParser>();
       
    public ParseXmlService(ConfigManager configManager) {
        super(configManager);
        parsers.put(ZipTypeUtil.ZIP_TYPE_AJ, new AjXmlParser(configManager));
        parsers.put(ZipTypeUtil.ZIP_TYPE_JG, new OrganXmlParser(configManager));
        parsers.put(ZipTypeUtil.ZIP_TYPE_DL, new DelAjXmlParser(configManager));
        parsers.put(ZipTypeUtil.ZIP_TYPE_AQ, new AqAjXmlParser(configManager));
    }

    @Override
    public IXmlParser getParser(String fileName) {
        return parsers.get(ZipTypeUtil.getType(fileName));
    } 
}
