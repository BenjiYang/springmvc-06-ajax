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
        if ("kuangshen".equals(name)) {
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

    @RequestMapping("/login")
    public String login(String username, String password) {
        String msg = "";
        if (username != null) {
            // admin 这些数据应该从数据库中查，此处hardcoded，demo用
            if ("admin".equals(username)) {
                msg = "用户名正确";
            } else {
                msg = "用户名有误";
            }
        }
        if (password != null) {
            // admin 这些数据应该从数据库中查，此处hardcoded，demo用
            if ("123456".equals(password)) {
                msg = "密码正确";
            } else {
                msg = "密码有误";
            }
        }
        return msg;
    }
}
