package com.pg.flex.dao;

import java.util.List;

import com.pg.flex.dto.Style;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StyleDao {

  public List<Style> getPosts();
  
}
