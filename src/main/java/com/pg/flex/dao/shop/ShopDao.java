package com.pg.flex.dao.shop;

import java.util.HashMap;
import java.util.List;

import com.pg.flex.dto.Product;
import com.pg.flex.dto.ProductBrand;
import com.pg.flex.dto.ProductCategory;
import com.pg.flex.dto.ProductSex;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ShopDao {

  List<Product> getProducts();

  List<HashMap<String, String>> getCategories();

  List<HashMap<String, String>> getSex();

  List<HashMap<String, String>> getProductBrands();
  
}
