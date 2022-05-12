package com.pg.flex.dao.mypage;

import java.util.List;

import com.pg.flex.dto.UserDetail;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MyPage {

  public UserDetail getUserDetail(String userId);
  
}
