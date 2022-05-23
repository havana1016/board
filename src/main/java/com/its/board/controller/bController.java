package com.its.board.controller;

import com.its.board.dto.bDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/board")
public class bController {

    @Autowired
    com.its.board.service.bService bs;

    @GetMapping("/save")
    String save(){
        return "save";
    }

    @PostMapping("/save")
    String save1(@ModelAttribute bDto text){
        System.out.println(text);
        if(bs.save(text)>0){
            return "redirect:findall";
        }else{
            return null;
        }

    }
    @GetMapping ("/findall")
      String findall(HttpSession session){
        List<bDto> flist=bs.findall();
        session.setAttribute("flist",flist);
        System.out.println(flist);
        return "findall";
    }
    @GetMapping("/detail")
    String detail(@RequestParam("id")Long id,Model model){
        bDto mem=bs.findmem(id);
        model.addAttribute("findmem",mem);
        return ("detail");
    }
    @GetMapping("/pwc/update")
    String pwc(@RequestParam("id")int id,Model model){
        model.addAttribute("id",id);
        return "pwck";
    }
    @PostMapping("pwc/uppw")
    @ResponseBody bDto uppw(@ModelAttribute bDto mem){
        bDto result = bs.bpwc(mem);
        System.out.println("bController.uppw");
        System.out.println(result);
        return result;

    }

//

}
