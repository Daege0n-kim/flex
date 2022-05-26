package com.pg.flex.dao.mypage;

import com.pg.flex.dto.UserDetail;
import com.pg.flex.dto.UserImage;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MyPage {

  public UserDetail getUserDetail(String userId);

  public void postUserImage(UserImage userImage);
  
}
