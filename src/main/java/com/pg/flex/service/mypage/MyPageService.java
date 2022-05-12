package com.pg.flex.service.mypage;

import java.util.List;

import com.pg.flex.dao.mypage.MyPage;
import com.pg.flex.dto.User;
import com.pg.flex.dto.UserDetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageService {

  @Autowired
  private MyPage myPageDao;

  public UserDetail getUserDetail(String userId) {
    return myPageDao.getUserDetail(userId);
  }
  
}
