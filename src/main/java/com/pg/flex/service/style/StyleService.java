package com.pg.flex.service.style;

import java.util.List;

import com.pg.flex.dao.StyleDao;
import com.pg.flex.dto.Style;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StyleService {

  @Autowired
  private StyleDao dao,dao2;
  public List<Style> getMainPosts;

  public List<Style> getPosts() {
    return dao.getPosts();
  }

  public List<Style> getMainPosts() {
    return dao2.getMainPosts();
  }


  
}
