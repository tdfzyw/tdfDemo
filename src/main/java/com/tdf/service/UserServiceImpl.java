package com.tdf.service;

import com.tdf.dao.UserDao;
import com.tdf.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;
    @Override
    public List<User> selectUserByUname(User user) {
        return userDao.selectUserByUname(user);
    }
}
