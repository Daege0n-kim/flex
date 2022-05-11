package com.pg.flex.service;

import java.util.Objects;

import com.pg.flex.dao.TestDao;
import com.pg.flex.dto.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    @Autowired
    TestDao dao;

    public User login(User user) {
        User userInfo = dao.login(user);
        
        if(Objects.isNull(userInfo)) return null;
        else return userInfo;
        
    }

    public void signUp(User user) {
        dao.signUp(user);
    }

    public int checkId(User user) {
        return dao.checkId(user);
    }
    
}
