package com.kuang.controller;

import com.kuang.pojo.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

    @RequestMapping("/a2")
    public List<User> a2() {
        ArrayList<User> userList = new ArrayList<User>();
        // 添加数据
        userList.add(new User("张三", 23, "男"));
        userList.add(new User("李四", 24, "男"));
        userList.add(new User("王五", 25, "女"));
        return userList;
    }


}
