package com.tdf.dao;

import com.tdf.entity.User;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface UserDao {
    public List<User> selectUserByUname(User user);
}
