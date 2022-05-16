package com.pg.flex.dao.shop;

import java.util.HashMap;
import java.util.List;

import com.pg.flex.dto.Product;
import com.pg.flex.dto.ProductBrand;
import com.pg.flex.dto.ProductCategory;
import com.pg.flex.dto.ProductEditRequest;
import com.pg.flex.dto.ProductImage;
import com.pg.flex.dto.ProductRequest;
import com.pg.flex.dto.ProductSex;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ShopDao {

  List<Product> getProducts();

  List<ProductCategory> getCategories();

  List<ProductSex> getSex();

  List<ProductBrand> getProductBrands();

  int addProduct(ProductEditRequest productEditRequest);

  void postProductImage(ProductImage productImage);

  List<ProductImage> getProductImageByProductImage(int productIndex);

  Product getProductByProductIndex(int productIndex);
  
}
