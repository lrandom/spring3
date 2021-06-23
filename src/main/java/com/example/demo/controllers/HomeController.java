package com.example.demo.controllers;

import com.example.demo.models.Company;
import com.example.demo.models.Signup;
import org.apache.catalina.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("content", "Chúng tôi là nhà cung cấp dịch vụ lớn nhất Việt Nam");
        Company company = new Company();
        company.address = "Hà Nội";
        company.fax = "0868231092";
        company.phone = "085747828";
        company.name = "NIIT";
        model.addAttribute("companyInfo",company);

        String staffNames[] = new String[]{
                "Luân",
                "Nam",
                "Long",
                "Lê"
        };
        model.addAttribute("staffNames", staffNames);
        model.addAttribute("type", 1+"");
        return "about";
    }

    @GetMapping("/signup")
    public String signup(Model model) {
        model.addAttribute("signup", new Signup());
        return "signup";
    }

    @PostMapping("/do-signup")
    public String doSignup(Signup signup) {
        System.out.println(signup.getFullname());
        System.out.println(signup.getUserName());
        return "redirect:signup";
    }
}
