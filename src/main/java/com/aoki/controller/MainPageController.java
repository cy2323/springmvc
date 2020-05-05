package com.aoki.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class MainPageController {

    @RequestMapping("/")
    private String sayHello(){
        return "main";
    }
}
