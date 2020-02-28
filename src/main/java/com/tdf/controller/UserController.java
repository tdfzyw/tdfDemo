package com.tdf.controller;

import com.tdf.entity.User;
import com.tdf.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("/select")
    public String select(User user, Model model) {
        List<User> list = userService.selectUserByUname(user);
        model.addAttribute("userList", list);
        return "userList";
    }

    @RequestMapping("user/userlistByPage")
    @ResponseBody
    public String selectListByPage() {
        return "";
    }
}
