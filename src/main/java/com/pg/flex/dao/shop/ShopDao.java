package com.pg.flex.dao.shop;

import java.util.HashMap;
import java.util.List;

import com.pg.flex.dto.Brand;
import com.pg.flex.dto.Category;
import com.pg.flex.dto.Gender;
import com.pg.flex.dto.Product;
import com.pg.flex.dto.ProductEditRequest;
import com.pg.flex.dto.ProductImage;
import com.pg.flex.dto.ProductRequest;
import com.pg.flex.dto.query.ProductQuery;
import com.pg.flex.dto.response.ProductResponse;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ShopDao {

  List<ProductResponse> getProducts();

  List<Category> getCategories();

  List<Gender> getGender();

  List<Brand> getBrands();

  int addProduct(ProductEditRequest productEditRequest);

  void postProductImage(ProductImage productImage);

  List<ProductImage> getProductImageByProductImage(int productIndex);

  ProductResponse getProductByProductIndex(int productIndex);

  void postProduct(ProductQuery query);
  
}
