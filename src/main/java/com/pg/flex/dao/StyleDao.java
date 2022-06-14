package com.pg.flex.dao;

import java.util.List;

import com.pg.flex.dto.Style;
import com.pg.flex.dto.response.SneakersResponse;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StyleDao {

  public List<Style> getPosts();
  public List<Style> getMainPosts();
  public List<SneakersResponse> getSneakers();
  
  
}
