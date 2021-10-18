package com.kuang.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RestController
public class AjaxController {

    @RequestMapping("/t1")
    public String test() {
        return "hello";
    }

    @RequestMapping("/a1")
    public void a1(String name, HttpServletResponse response) throws IOException {
        System.out.println("b:param=>" + name);
        if ("kuangshen".equals(name))
        {
            response.getWriter().print("input matched");
        } else {
            response.getWriter().print("input unmatched");
        }
    }
}
