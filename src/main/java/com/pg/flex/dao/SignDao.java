package com.pg.flex.dao;

import java.util.List;

import com.pg.flex.dto.User;
import com.pg.flex.dto.request.SignUserRequestForm;
import com.pg.flex.dto.response.SignUserResponse;

import org.apache.ibatis.annotations.Mapper;
@Mapper
public interface SignDao {

  public List<User> getAllUser();

  public SignUserResponse login(SignUserRequestForm requestForm);

  public void signUp(SignUserRequestForm requestForm);

  public int checkId(User user);
  
}
