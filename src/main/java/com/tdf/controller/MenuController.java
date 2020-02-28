package com.tdf.controller;

import com.tdf.entity.Menu;
import com.tdf.service.MenuService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;


@Controller
public class MenuController {

    @Resource
    private MenuService menuService;

    @RequestMapping(value = "/menu/loadMenus")
    @ResponseBody
    public Menu loadMenus() {
        Menu menus;
        menus = menuService.findMenuByUserid(1);
        return menus;
    }
}