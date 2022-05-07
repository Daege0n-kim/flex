package com.pg.flex.dao.shop;

import java.util.List;

import com.pg.flex.dto.Product;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ShopDao {

  List<Product> getProducts();
  
}
