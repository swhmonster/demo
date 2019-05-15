package com.cczu.sm.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.bouncycastle.util.encoders.Hex;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cczu.sm.entity.SM3Digest;
import com.cczu.sm.entity.SM4;
import com.cczu.sm.entity.SM4Utils;
import com.cczu.sm.entity.SM4_Context;
import com.cczu.sm.entity.Util;

@Controller
public class SmController {
    @RequestMapping("/sm")
    @ResponseBody
    public void getFile(String optionsRadiosinline3,
            String optionsRadiosinline2, String optionsRadiosinline,
            String key, MultipartFile mpfile) throws Exception {
        String filename = mpfile.getOriginalFilename();
        String mykey = key;
        String myoption = optionsRadiosinline;
        System.out.println("密钥：" + mykey + "\n" + "文件名:" + filename + "\n"
                + "功能选择：" + myoption);

        byte[] input = mpfile.getBytes();

        //SM3杂凑密钥
        byte[] md = new byte[32];
        byte[] msg1 = mykey.getBytes();
        SM3Digest sm3 = new SM3Digest();
        sm3.update(msg1, 0, msg1.length);
        sm3.doFinal(md, 0);
        String s = new String(Hex.encode(md)).substring(0, 16).toUpperCase();
        //        System.out.println("杂凑密钥：" + s);

        //SM4加密
        //optionsRadiosinline等于1加密，等于2解密
        //optionsRadiosinline2等于3ECB模式，等于4CBC模式
        if (optionsRadiosinline.equals("1")) {
            //SM4设置加密密钥
            SM4 s4 = new SM4();
            SM4_Context ctx = new SM4_Context();
            ctx.isPadding = true;
            ctx.mode = SM4.SM4_ENCRYPT;
            byte[] keyBytes = s.getBytes();
            s4.sm4_setkey_enc(ctx, keyBytes);
            if (optionsRadiosinline2.equals("3")) {
                //ECB模式
                String path = "";
                //等于5上传保存服务器，等于6上传操作后下载
                //                if (optionsRadiosinline3.equals("5")) {
                //                    path = "F:\\MyEclipse 9Workspaces\\sm\\smfile\\";
                //                } else {
                //                    path = "F:\\MyEclipse 9Workspaces\\sm\\smfiledown\\";
                //                }
                if (optionsRadiosinline3.equals("5")) {
                    path = "D:\\毕业设计\\smfile\\";
                } else {
                    path = "D:\\毕业设计\\smfiledown\\";
                }
                File file = new File(path + filename + ".encecb");
                if (file.exists()) {
                    file.delete();
                    file.createNewFile();
                }
                FileOutputStream out = new FileOutputStream(file);
                out.write(s4.sm4_crypt_ecb(ctx, input), 0,
                    s4.sm4_crypt_ecb(ctx, input).length);
                out.close();
            } else {
                //CBC模式
                String path = "";
                //                if (optionsRadiosinline3.equals("5")) {
                //                    path = "F:\\MyEclipse 9Workspaces\\sm\\smfile\\";
                //                } else {
                //                    path = "F:\\MyEclipse 9Workspaces\\sm\\smfiledown\\";
                //                }
                if (optionsRadiosinline3.equals("5")) {
                    path = "D:\\毕业设计\\smfile\\";
                } else {
                    path = "D:\\毕业设计\\smfiledown\\";
                }
                File file = new File(path + filename + ".enccbc");
                FileOutputStream out = new FileOutputStream(file);
                out.write(s4.sm4_crypt_cbc(ctx, keyBytes, input), 0,
                    s4.sm4_crypt_cbc(ctx, keyBytes, input).length);
                out.close();
            }
        } else {
            //解密操作
            //SM4设置加密密钥
            SM4 s4 = new SM4();
            SM4_Context ctx = new SM4_Context();
            ctx.isPadding = true;
            ctx.mode = SM4.SM4_DECRYPT;
            byte[] keyBytes = s.getBytes();
            s4.sm4_setkey_dec(ctx, keyBytes);
            if (optionsRadiosinline2.equals("3")) {
                //ECB模式
                String path = "";
                //等于5上传保存服务器，等于6上传操作后下载
                //                if (optionsRadiosinline3.equals("5")) {
                //                    path = "F:\\MyEclipse 9Workspaces\\sm\\smfile\\";
                //                } else {
                //                    path = "F:\\MyEclipse 9Workspaces\\sm\\smfiledown\\";
                //                }
                if (optionsRadiosinline3.equals("5")) {
                    path = "D:\\毕业设计\\smfile\\";
                } else {
                    path = "D:\\毕业设计\\smfiledown\\";
                }
                File file = new File(path
                        + filename.substring(0, filename.lastIndexOf(".")));
                if (file.exists()) {
                    file.delete();
                    file.createNewFile();
                }
                FileOutputStream out = new FileOutputStream(file);
                out.write(s4.sm4_crypt_ecb(ctx, input), 0,
                    s4.sm4_crypt_ecb(ctx, input).length);
                out.close();
            } else {
                //CBC模式
                String path = "";
                //                if (optionsRadiosinline3.equals("5")) {
                //                    path = "F:\\MyEclipse 9Workspaces\\sm\\smfile\\";
                //                } else {
                //                    path = "F:\\MyEclipse 9Workspaces\\sm\\smfiledown\\";
                //                }
                if (optionsRadiosinline3.equals("5")) {
                    path = "D:\\毕业设计\\smfile\\";
                } else {
                    path = "D:\\毕业设计\\smfiledown\\";
                }
                File file = new File(path
                        + filename.substring(0, filename.lastIndexOf(".")));
                FileOutputStream out = new FileOutputStream(file);
                out.write(s4.sm4_crypt_cbc(ctx, keyBytes, input), 0,
                    s4.sm4_crypt_cbc(ctx, keyBytes, input).length);
                out.close();
            }
        }

    }

    //    @RequestMapping("/sm/download")
    //    public ResponseEntity<byte[]> download() throws IOException {
    //        String path = "F:\\MyEclipse 9Workspaces\\sm\\smfiledown\\";
    //        File file = new File(path);
    //        String fname = null;
    //        for (File p : file.listFiles()) {
    //            if (!p.isDirectory()) {
    //                fname = p.getName();
    //                HttpHeaders headers = new HttpHeaders();
    //                String fileName = new String(fname.getBytes("UTF-8"),
    //                        "iso-8859-1");//为了解决中文名称乱码问题  
    //                headers.setContentDispositionFormData("attachment", fileName);
    //                headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
    //                return new ResponseEntity<byte[]>(
    //                        FileUtils.readFileToByteArray(p),
    //                        headers,
    //                        HttpStatus.CREATED);
    //            }
    //        }
    //        return null;
    //    }
    //
    @RequestMapping("/sm/download")
    public void downLoad(String file, HttpServletRequest request,
            HttpServletResponse response) {
        //        String path = "F:\\MyEclipse 9Workspaces\\sm\\smfiledown\\";
        String path = "D:\\毕业设计\\smfiledown\\";
        File ofile = new File(path);
        for (File p : ofile.listFiles()) {
            if (!p.isDirectory()) {
                String fname = p.getName();
                FileInputStream fs = null;
                if (p.exists()) {
                    // response.setContentType("application/force-download");
                    try {
                        response.setHeader(
                            "Content-Disposition",
                            "attachment;fileName="
                                    + new String(fname.getBytes("utf-8"),
                                            "iso_8859_1"));
                        fs = new FileInputStream(p);
                        byte[] buf = new byte[1024];
                        int len = 0;
                        ServletOutputStream o = response.getOutputStream();
                        while ((len = fs.read(buf)) != -1) {
                            o.write(buf, 0, len);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        request.setAttribute("error", " 쳣  ");
                    } finally {
                        try {
                            if (fs != null)
                                fs.close();
                        } catch (IOException e) {
                            request.setAttribute("error", " 쳣  ");
                        }
                    }
                    p.delete();
                    break;
                }
            }
        }
    }

}
