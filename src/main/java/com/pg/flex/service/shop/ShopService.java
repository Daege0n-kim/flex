package com.pg.flex.service.shop;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import com.pg.flex.dao.shop.ShopDao;
import com.pg.flex.dto.Brand;
import com.pg.flex.dto.Category;
import com.pg.flex.dto.Gender;
import com.pg.flex.dto.Product;
import com.pg.flex.dto.ProductEditRequest;
import com.pg.flex.dto.ProductImage;
import com.pg.flex.dto.ProductRequest;
import com.pg.flex.dto.query.ProductQuery;
import com.pg.flex.dto.request.AddCartRequest;
import com.pg.flex.dto.request.AddToCartFromLike;
import com.pg.flex.dto.request.GetProductWithLike;
import com.pg.flex.dto.request.IsLiked;
import com.pg.flex.dto.request.ProductRequestForm;
import com.pg.flex.dto.request.UpdateCartCount;
import com.pg.flex.dto.response.Cart;
import com.pg.flex.dto.response.CartResponse;
import com.pg.flex.dto.response.IsLikedResponse;
import com.pg.flex.dto.response.LikeResponse;
import com.pg.flex.dto.response.ProductResponse;
import com.pg.flex.service.mypage.MyPageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ShopService {

  @Autowired
  private ShopDao dao;

  @Autowired
  private MyPageService myPageService;

  @Value("${upload.file.path}")
  private String UPLOAD_FILE_PATH;

  public List<ProductResponse> getProducts() {
    return dao.getProducts();
  }

  public int addProduct(ProductEditRequest productEditRequest) {
    dao.addProduct(productEditRequest);
    return productEditRequest.getProductIndex();
  }

  public List<Category> getCategories() {
    List<Category> list = dao.getCategories();
    return list;
  }

  public List<Gender> getSex() {
    List<Gender> list = dao.getGender();
    return list;
  }

  public List<Brand> getProductBrands() {
    List<Brand> list = dao.getBrands();
    return list;
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

  public ProductResponse getProductByProductIndex(GetProductWithLike query) {

    return dao.getProductByProductIndex(query);
  } 

  public void postProduct(ProductRequestForm requestForm) {

    // 1. 파일을 등록한다. 로컬에 등록이 됐을 때 저장된 파일명을 가져와서 디비에 저장
    String thumbSavedFileName = saveImagesOnLocal(requestForm.getThumb());
    String detailSavedFileName = saveImagesOnLocal(requestForm.getDetail());

    // 2. 1번에서 작업한 파일명을 쿼리 객체에 등록 → 쿼리 객체를 생성 (쿼리 객체란 마이바티스에 들어갈 파라미터) clear
    ProductQuery query = generateProductQuery(requestForm, thumbSavedFileName, detailSavedFileName);

    // 3. 2번에서 디비에 등록 할 값을 설정을 완료했으니 DAO를 호출 clear
    dao.postProduct(query);
  }

  public String saveImagesOnLocal(MultipartFile file) {
      String prefix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1, file.getOriginalFilename().length());
      String fileName = UUID.randomUUID().toString() + "." + prefix;
      String pathName = UPLOAD_FILE_PATH + "product-image/" + fileName;

      String savedFileName = fileName;
  
      File dest = new File(pathName);
  
      try {
        file.transferTo(dest);
      } catch (IllegalStateException | IOException e) {
        e.printStackTrace();
      }
    return savedFileName;
  }

  public ProductQuery generateProductQuery(ProductRequestForm requestForm, String thumb, String detail) {

    ProductQuery query = new ProductQuery(
      requestForm.getProductName(),
      requestForm.getProductPrice(),
      thumb,
      detail,
      requestForm.getCategory(),
      requestForm.getBrand(),
      requestForm.getGender()
    );

    return query;
  }  

  public IsLikedResponse isLiked(IsLiked isLiked) {
    return dao.isLiked(isLiked);
  }

  public void addLike(IsLiked isLiked) {
    dao.addLike(isLiked);
  }

  public void deleteLike(IsLikedResponse isLiked) {
    dao.deleteLike(isLiked);
  }

  public void addToCart(IsLiked addToCart) {
    dao.addToCart(addToCart);
  }

  public void addToCartAll(List<AddToCartFromLike> requestForm) {

    List<LikeResponse> likes =  myPageService.getLikesByLikeIndex(requestForm);
    List<CartResponse> cartResponse = dao.getCartListByProductIndexAndUserId(likes);

    List<AddCartRequest> update = new ArrayList<>();
    List<AddCartRequest> add = new ArrayList<>();

    for(LikeResponse like: likes) {
      AddCartRequest request = new AddCartRequest(like.getProductIndex(), like.getUserId());
      boolean flag = cartResponse.stream().anyMatch(item -> item.getProductIndex() == like.getProductIndex());

      if(flag) {
        update.add(request);
      } else {
        add.add(request);
      }
    }

    if(update.size() > 0) {
      dao.updateCartCount(update);
    }
    if(add.size() > 0) {
      dao.addToCartFromLike(add);
    }
  }
}
