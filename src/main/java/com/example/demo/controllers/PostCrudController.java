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

    @GetMapping("/crud/delete")
    public void delete() {
        postRepo.deleteById(new Long(2).longValue());
    }

    @GetMapping("/crud/getAll")
    public void getAll() {
         Iterable<Post> posts =  postRepo.findAll();
        for (Post post  :posts ) {
            System.out.println(post.getContent());
            System.out.println(post.getId());
            System.out.println(post.getKeyword());
            System.out.println(post.getTitle());
        }
    }

    @GetMapping("/crud/update")
    public void update() {
        Post post =  postRepo.findById(new Long(2).longValue()).get();
        post.setTitle("Chống COVID 4 thành công");
        post.setKeyword("COVID, CODOVA");
        postRepo.save(post);
    }
}
