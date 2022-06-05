package com.pg.flex.service;

import java.util.Objects;

import com.pg.flex.dao.SignDao;
import com.pg.flex.dto.User;
import com.pg.flex.dto.request.SignUserRequestForm;
import com.pg.flex.dto.response.SignUserResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    @Autowired
    SignDao dao;

    public SignUserResponse login(SignUserRequestForm requestForm) {
        SignUserResponse userInfo = dao.login(requestForm);
        
        if(Objects.isNull(userInfo)) return null;
        else return userInfo;
        
    }

    public void signUp(SignUserRequestForm requestForm) {
        dao.signUp(requestForm);
    }

    public int checkId(User user) {
        return dao.checkId(user);
    }
    
}
