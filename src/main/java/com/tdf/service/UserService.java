package com.tdf.service;

import com.tdf.entity.User;

import java.util.List;

public interface UserService {

     List<User> selectUserByUname(User user);
}
