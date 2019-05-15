package com.thunisoft.parse09xml.util;

import java.io.IOException;
import java.net.JarURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.jar.JarFile;

import org.apache.commons.lang3.StringUtils;

public class JarUtil {
    
    public static JarFile getJarFile(String rootPath) throws IOException {
        URL url = JarUtil.class.getClassLoader().getResource(rootPath);
        URLConnection con = url.openConnection();
        JarFile jarFile = null;
        if (con instanceof JarURLConnection) {
            // Should usually be the case for traditional JAR files.
            JarURLConnection jarCon = (JarURLConnection) con;
            jarCon.setUseCaches(false);
            jarFile = jarCon.getJarFile();
        } else {
            // No JarURLConnection -> need to resort to URL file parsing.
            // We'll assume URLs of the format "jar:path!/entry", with the protocol
            // being arbitrary as long as following the entry format.
            // We'll also handle paths with and without leading "file:" prefix.
            String urlFile = url.getFile();
            int separatorIndex = urlFile.indexOf("!/");
            if (separatorIndex != -1) {
                String jarFileUrl = urlFile.substring(0, separatorIndex);
                jarFile = newJarFile(jarFileUrl);
            }
            else {
                jarFile = new JarFile(urlFile);
            }
        }
        return jarFile;
    }
    
    private static JarFile newJarFile(String jarFileUrl) throws IOException {
        if (jarFileUrl.startsWith("file:")) {
            try {
                return new JarFile(toURI(jarFileUrl).getSchemeSpecificPart());
            }
            catch (URISyntaxException ex) {
                return new JarFile(jarFileUrl.substring("file:".length()));
            }
        }
        else {
            return new JarFile(jarFileUrl);
        }
    }
    
    private static URI toURI(String location) throws URISyntaxException {
        return new URI(StringUtils.replace(location, " ", "%20"));
    }
}
