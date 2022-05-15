package com.pg.flex.service.shop;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.pg.flex.dao.shop.ShopDao;
import com.pg.flex.dto.Product;
import com.pg.flex.dto.ProductBrand;
import com.pg.flex.dto.ProductCategory;
import com.pg.flex.dto.ProductEditRequest;
import com.pg.flex.dto.ProductSex;

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

  public void addProduct(ProductEditRequest productEditRequest) {

  }

  public List<ProductCategory> getCategories() {
    List<HashMap<String, String>> list = dao.getCategories();
    List<ProductCategory> returnData = new ArrayList<>();
    for (HashMap<String, String> data : list) {
      ProductCategory category = new ProductCategory(Integer.parseInt(String.valueOf(data.get("category_index"))) , data.get("category_name"));
      returnData.add(category);
    }

    return returnData;
  }

  public List<ProductSex> getSex() {
    List<HashMap<String, String>> list = dao.getCategories();
    List<ProductSex> returnData = new ArrayList<>();
    for (HashMap<String, String> data : list) {
      ProductSex sex = new ProductSex(Integer.parseInt(String.valueOf(data.get("sex_index"))), data.get("sex"));
      returnData.add(sex);
    }

    return returnData;
  }

  public List<ProductBrand> getProductBrands() {
    List<HashMap<String, String>> list = dao.getCategories();
    List<ProductBrand> returnData = new ArrayList<>();
    for (HashMap<String, String> data : list) {
      ProductBrand category = new ProductBrand(Integer.parseInt(String.valueOf(data.get("brand_index"))), data.get("brand_name"));
      returnData.add(category);
    }

    return returnData;
  }
  
}
