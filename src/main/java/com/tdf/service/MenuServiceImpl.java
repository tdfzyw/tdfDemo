package com.tdf.service;

import com.tdf.dao.MenuMapper;
import com.tdf.entity.Menu;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class MenuServiceImpl implements MenuService {
    @Resource
    private MenuMapper menuMapper;
    private Menu cloneMenu(Menu src) {
        Menu menu = new Menu();
        menu.setIcon(src.getIcon());
        menu.setMenuid(src.getMenuid());
        menu.setMenuname(src.getMenuname());
        menu.setUrl(src.getUrl());
        menu.setMenus(new ArrayList<Menu>());
        return menu;
    }

    @Override
    public Menu findMenuByUserid(Integer userid) {

        Menu menu;
        // 获取根菜单
        List<Menu> root = menuMapper.selectMenu("-1");
        // 用户下的菜单集合 找数据库
        //			List<Menu> userMenus = menuMapper.selectMenuByUserid(userid);
        // 根菜单
        menu = cloneMenu(root.get(0));
        // 暂存一级菜单
        Menu _m1;
        // 暂存二级菜单
        Menu _m2;
        // 获取全部的一级菜单
        List<Menu> parentMenus = menuMapper.selectMenu("0");
        // 循环一级菜单
        for (Menu m1 : parentMenus) {
            _m1 = cloneMenu(m1);
            // 获取当前一级菜单的所有二级菜单
            List<Menu> leafMenus = menuMapper.selectMenu(_m1.getMenuid());
            // 循环匹配二级菜单
            for (Menu m2 : leafMenus) {
                // 将二级菜单加入一级菜单
                _m2 = cloneMenu(m2);
                _m1.getMenus().add(_m2);

            }

            // 有二级菜单我们才加进来
            if (_m1.getMenus().size() > 0) {
                // 把一级菜单加入到根菜单下
                menu.getMenus().add(_m1);
            }
        }


        return menu;
    }
}
