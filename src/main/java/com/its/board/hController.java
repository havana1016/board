package com.its.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class hController {
    @GetMapping("/")
    String index(){
        return "index";
    }
}