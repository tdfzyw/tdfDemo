package com.tdf.entity;
import java.util.Date;
public class User {
    private Integer user_id;
    private String user_code;
    private String user_name;
    private String user_pwd;
    private Date user_birthday;

    public Integer getUser_id() {
        return user_id;
    }

    public String getUser_code() {
        return user_code;
    }

    public String getUser_name() {
        return user_name;
    }

    public String getUser_pwd() {
        return user_pwd;
    }

    public Date getUser_birthday() {
        return user_birthday;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public void setUser_code(String user_code) {
        this.user_code = user_code;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public void setUser_pwd(String user_pwd) {
        this.user_pwd = user_pwd;
    }

    public void setUser_birthday(Date user_birthday) {
        this.user_birthday = user_birthday;
    }
}
