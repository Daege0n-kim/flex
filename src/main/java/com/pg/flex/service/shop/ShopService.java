package com.pg.flex.service.shop;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import com.pg.flex.dao.shop.ShopDao;
import com.pg.flex.dto.Product;
import com.pg.flex.dto.ProductBrand;
import com.pg.flex.dto.ProductCategory;
import com.pg.flex.dto.ProductEditRequest;
import com.pg.flex.dto.ProductImage;
import com.pg.flex.dto.ProductRequest;
import com.pg.flex.dto.ProductSex;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ShopService {

  @Autowired
  private ShopDao dao;

  @Value("${upload.file.path}")
  private String UPLOAD_FILE_PATH;

  public List<Product> getProducts() {

    List<Product> result = dao.getProducts();

    return result;
  }

  public int addProduct(ProductEditRequest productEditRequest) {
    dao.addProduct(productEditRequest);
    return productEditRequest.getProductIndex();
  }

  public List<ProductCategory> getCategories() {
    List<ProductCategory> list = dao.getCategories();
    List<ProductCategory> returnData = new ArrayList<>();
    for (ProductCategory data : list) {
      returnData.add(data);
    }
    return returnData;
  }

  public List<ProductSex> getSex() {
    List<ProductSex> list = dao.getSex();
    List<ProductSex> returnData = new ArrayList<>();
    for (ProductSex data : list) {
      returnData.add(data);
    }
    return returnData;
  }

  public List<ProductBrand> getProductBrands() {
    List<ProductBrand> list = dao.getProductBrands();
    List<ProductBrand> returnData = new ArrayList<>();
    for (ProductBrand data : list) {
      returnData.add(data);
    }
    return returnData;
  }

  public void addProductImage(int productIndex, List<MultipartFile> list) {

    int index = 0;
    for(MultipartFile multipartFile : list) {
      String prefix = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf(".") + 1, multipartFile.getOriginalFilename().length());
      String fileName = UUID.randomUUID().toString() + "." + prefix;
      String pathName = UPLOAD_FILE_PATH + "product-image/" + fileName;

      String originalFileName = multipartFile.getOriginalFilename();
      String savedFileName = fileName;
  
      File dest = new File(pathName);
  
      try {
        multipartFile.transferTo(dest);
        ProductImage productImage = new ProductImage();
        if(index == 0) {
          productImage.setProductIndex(productIndex);
          productImage.setOriginalFileName(originalFileName);
          productImage.setSavedFileName(savedFileName);
          productImage.setIsThumb(1);
          index++;
        } else {
          productImage.setProductIndex(productIndex);
          productImage.setOriginalFileName(originalFileName);
          productImage.setSavedFileName(savedFileName);
          productImage.setIsThumb(0);
          index++;
        }
        dao.postProductImage(productImage);
      } catch (IllegalStateException | IOException e) {
        e.printStackTrace();
      }
    }
  }

  public List<ProductImage> getProductImageByProductImage(int productIndex) {
    return dao.getProductImageByProductImage(productIndex);
  }

  public Product getProductByProductIndex(int productIndex) {

    return dao.getProductByProductIndex(productIndex);
  }  
}
