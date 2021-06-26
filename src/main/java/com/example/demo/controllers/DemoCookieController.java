package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class DemoCookieController {
    @GetMapping("/set-cookie")
    public String setCookie(HttpServletResponse resp) {
        Cookie cookie = new Cookie("view-counter", 0+"");
        resp.addCookie(cookie);
        return "redirect: get-cookie";
    }

    @GetMapping("/get-cookie")
    public String getCookie(HttpServletRequest req, Model model) {
        Cookie[] cookies = req.getCookies();
        for (Cookie cookie  :cookies ) {
            if (cookie.getName().equals("view-counter")) {
                model.addAttribute("viewCounter", cookie.getValue());
                break;
            }
        }
        return "get-cookie";
    }

    @GetMapping("/get-once-cookie")
    public String getOneCookie(@CookieValue(name = "view-counter") String viewCounter, Model model ) {
        model.addAttribute("viewCounter", viewCounter);
        return "get-cookie";
    }


}

