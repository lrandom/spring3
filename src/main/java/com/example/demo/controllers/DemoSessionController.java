package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class DemoSessionController {
    @GetMapping("/set-session")
    public String setSession(HttpSession session) {
        session.setAttribute("USER", "luan");
        return "redirect:/get-session";
    }

    @GetMapping("/get-session")
    public String getSession(HttpSession session, Model model) {
        String user = (String) session.getAttribute("USER");
        model.addAttribute("user", user);
        return "get-session";
    }
}
