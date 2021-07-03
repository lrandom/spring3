package com.example.demo.controllers;

import com.example.demo.models.Post;
import com.example.demo.respository.PostRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PostCrudController {
    @Autowired
    PostRepo postRepo;

    @GetMapping("/crud/add")
    public void add() {
        Post post = new Post();
        post.setContent("Chống covid thành công");
        post.setTitle("Chống covid");
        post.setKeyword("COVID,Corona");
        postRepo.save(post);
        //lưu một bản ghi thành công
    }

  /*  public String delete() {

    }

    public String getAll() {

    }

    public String update() {

    }*/
}
