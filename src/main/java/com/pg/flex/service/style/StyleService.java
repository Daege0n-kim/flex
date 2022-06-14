package com.pg.flex.service.style;

import java.util.List;

import com.pg.flex.dao.StyleDao;
import com.pg.flex.dto.Style;
import com.pg.flex.dto.response.SneakersResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StyleService {

  @Autowired
  private static StyleDao dao;

  public List<Style> getPosts() {
    return dao.getPosts();
  }

  public List<Style> getMainPosts() {
    return dao.getMainPosts();
  }
  
}
