package com.pg.flex.service.shop;

import java.util.List;

import com.pg.flex.dao.shop.ShopDao;
import com.pg.flex.dto.Product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopService {

  @Autowired
  private ShopDao dao;

  public List<Product> getProducts() {

    List<Product> result = dao.getProducts();

    return result;
  }
  
}
