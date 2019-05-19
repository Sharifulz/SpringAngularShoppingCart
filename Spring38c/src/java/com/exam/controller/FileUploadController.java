/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.controller;

import java.io.IOException;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.file.Files;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author shaarif
 */
@Controller
public class FileUploadController {
    public static String uploadDir = "C:\\Users\\shaarif\\Desktop\\spring\\Spring38b\\web\\uploads";
   // public static String uploadDir = System.getProperty("user.dir")+"/uploads";
    //C:\Users\\shaarif\\Desktop\\Spring\\Spring38b\\web\\img\\
     // String savePath = "C:\\Users\\shaarif\\Desktop\\TO LET 4\\ToLet\\web\\img\\"+ File.separator+ filename;
    @RequestMapping("/fileUpload.htm")
    public String upload(Model model, @RequestParam("files") MultipartFile[] files){
        StringBuilder fileNames = new StringBuilder();
        Path fileNameAndPath=null;
        for(MultipartFile file: files){
             fileNameAndPath = Paths.get(uploadDir, file.getOriginalFilename());
            fileNames.append(file.getOriginalFilename());
            try {
                Files.write(fileNameAndPath, file.getBytes());
            } catch (IOException ex) {
                Logger.getLogger(FileUploadController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        System.out.println("file Name "+ fileNames.toString()+ "filePath : "+ fileNameAndPath);
        return "success";
    }
}
