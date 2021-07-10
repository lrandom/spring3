package com.example.demo.controllers;

import com.example.demo.models.Clothe;
import com.example.demo.models.Image;
import com.example.demo.models.School;
import com.example.demo.models.User;
import com.example.demo.respository.ImageRepo;
import com.example.demo.respository.SchoolRepo;
import com.example.demo.respository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

@Controller
public class GalleryController {
    @Autowired
    ImageRepo imageRepo;

    @Autowired
    UserRepo userRepo;

    @Autowired
    SchoolRepo schoolRepo;


    @Value("${config.upload_folder}")
    String UPLOAD_FOLDER;

    @GetMapping("/gallery/upload")
    public String uploadImage() {
        return "gallery/upload_form";
    }

    @PostMapping("/gallery/do-upload")
    public String doUploadImage(@RequestParam(name = "title") String title,
                                @RequestParam(name="img")MultipartFile file) {

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
            String relativeFilePath = subFolder + Instant.now().getEpochSecond() +file.getOriginalFilename();
            Files.write(Paths.get(UPLOAD_FOLDER+relativeFilePath), file.getBytes());
            Image image = new Image();
            image.setPath(relativeFilePath);
            image.setTitle(title);
            imageRepo.save(image);
        } catch (Exception e) {
            System.out.println("cannot upload file");
            e.printStackTrace();
        }

        return "redirect:/gallery/show";
    }

    @GetMapping("/gallery/show")
    public String galleyShow(@RequestParam(name = "page", defaultValue = "1")int activePage ,Model model) {

        Iterable<Image> imageIter =  imageRepo.findAll(PageRequest.of(activePage-1, 12));
        //Lấy về tổng số bản ghi
        long totalImages = imageRepo.count();
        double totalPages = Math.ceil((double) totalImages/12);

        ArrayList<Image> images = new ArrayList<>();
        for ( Image image : imageIter ) {
            image.setPath("/uploads/"+image.getPath());
            images.add(image);
        }
        model.addAttribute("activePage", activePage);
        model.addAttribute("totalPages",totalPages);
        model.addAttribute("images",images);
        return "gallery/gallery_show";
    }

    @GetMapping("/one-to-one")
    public void oneToOne() {
       User user= userRepo.findById(new Long(1)).get();
        System.out.println( user.getUserInfo().getHobby());
    }

    @GetMapping("/one-to-many")
    public void oneToMany() {
        User user= userRepo.findById(new Long(1)).get();
        Collection<Clothe> clothes= user.getClothes();
        for (Clothe clo  : clothes ) {
            System.out.println(clo.getBrand());
            System.out.println(clo.getName());
        }
    }

    @GetMapping("/many-to-many")
    public String manyToMany() {
        User user= userRepo.findById(new Long(1)).get();
        Collection<School> schools= user.getSchools();
        for (School school  : schools ) {
            System.out.println(school.getName());
        }

        School school= schoolRepo.findById(new Long(5)).get();
        Collection<User> users= school.getUsers();
        for (User user1  : users ) {
            System.out.println(user1.getEmail());
        }
        return "gallery/upload_form";
    }
}
