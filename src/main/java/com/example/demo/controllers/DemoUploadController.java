package com.example.demo.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

@Controller
public class DemoUploadController {
    @Value("${config.upload_folder}")
    String UPLOAD_FOLDER;
    @GetMapping("/upload-form")
    public String uploadForm() {
        return "upload-form";
    }


    @PostMapping("/do-upload-file")
    public String doUploadFile(@RequestParam(name="image")MultipartFile file) {
        //String path = "/Users/mac/Documents/spring_uploads/" + Instant.now().getEpochSecond() +file.getOriginalFilename();
        //ghi file vào thư mục
        //6_2021
        ///Users/mac/Documents/spring_uploads/06_2021
        ///Users/mac/Documents/spring_uploads/07_2021
        //File.exists()

        Date date = new Date();
        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        int year = localDate.getYear();//2021
        int month = localDate.getMonthValue();//06
        String subFolder = month+"_"+year+"/";//06_2021/
        String fullUploadDir = UPLOAD_FOLDER+subFolder;
        File checkDir = new File(fullUploadDir);
        if (!checkDir.exists() || checkDir.isFile()) {
            //tạo mới folder
            checkDir.mkdir();
        }
        try {
            Files.write(Paths.get(fullUploadDir+Instant.now().getEpochSecond() +file.getOriginalFilename()), file.getBytes());
        } catch (Exception e) {
            System.out.println("cannot upload file");
            e.printStackTrace();
        }
        return "redirect:/upload-form";
    }
}
