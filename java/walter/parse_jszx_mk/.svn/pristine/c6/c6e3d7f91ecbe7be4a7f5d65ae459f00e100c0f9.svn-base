package com.thunisoft.parse09xml.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;



/**
 * 合并xsd中复用节点至各类xsd中
 * @author guoxr
 *
 */
public class MergeXsd {
    private static Logger logger = LoggerFactory.getLogger(MergeXsd.class);

    public static void main(String[] args) {
        File path = new File("src\\config\\xsd");
        if (args.length != 0) {
            path = new File(args[0]);
        }

        Map<String, Set<String>> refs = new HashMap<String, Set<String>>();
        Map<String, Document> docMap = new HashMap<String, Document>();
        for (File f : path.listFiles()) {
            if (f.isFile()) {
                try {
                    Document doc = buildRefsMap(refs, f);
                    docMap.put(f.getName(), doc);
                } catch (DocumentException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }
        Set<String> names = new HashSet<String>(Arrays.asList("_0B_组织机构.xsd",
                "_0D_待删除案件.xsd"));
/*        Set<String> names = new HashSet<String>(Arrays.asList("_B_组织机构.xsd",
            "_C_待删除案件.xsd","_SFXZ_C_待删除案件.xsd"));*/

        for (Entry<String, Document> entry : docMap.entrySet()) {
            String name = entry.getKey();
            if ((name.startsWith("_") || name.endsWith("all.xsd"))
                    && !names.contains(name)) {
                continue;
            }

            Set<String> rets = new HashSet<String>();
            getRealRfs(refs, name, rets);

            try {
                Document doc = docMap.get(name);
                for (String rf : rets) {
                    @SuppressWarnings("unchecked")
                    List<Element> els = docMap.get(rf).getRootElement()
                            .elements();
                    for (Element el : els) {
                        el.setParent(null);
                        doc.getRootElement().add(el);
                    }
                }
                OutputFormat format = OutputFormat.createPrettyPrint();
                format.setEncoding("utf-8");
                XMLWriter writer = new XMLWriter(new FileOutputStream(
                        path.getPath()
                                + "/"
                                + "merged/"
                                + name.substring(0, name.length()
                                        - 4) + "_all.xsd"),
                        format);
                writer.write(doc);
                writer.close();
            } catch (UnsupportedEncodingException e) {
                logger.error(e.getMessage(), e);
            } catch (FileNotFoundException e) {
                logger.error(e.getMessage(), e);
            } catch (IOException e) {
                logger.error(e.getMessage(), e);
            }
        }
    }

    private static void getRealRfs(Map<String, Set<String>> refs, String name,
            Set<String> rets) {
        Set<String> rfs = refs.get(name);
        if (rfs == null) {
            return;
        }
        rets.addAll(rfs);
        for (String rf : rfs) {
            getRealRfs(refs, rf, rets);
        }
    }

    private static Document buildRefsMap(Map<String, Set<String>> refs, File f) throws DocumentException {
        SAXReader reader = new SAXReader();
        Document doc = reader.read(f);
        Element rootEl = doc.getRootElement();
        @SuppressWarnings("unchecked")
        List<Element> icds = rootEl.elements("include");
        Set<String> rfs = new HashSet<String>();
        for (Element el : icds) {
            String docLoc = el.attributeValue("schemaLocation");
            rfs.add(docLoc);
            rootEl.remove(el);
        }
        refs.put(f.getName(), rfs);
        return doc;
    }

}
