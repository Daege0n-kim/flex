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
import com.pg.flex.dto.request.AddCartRequest;
import com.pg.flex.dto.request.GetProductWithLike;
import com.pg.flex.dto.request.IsLiked;
import com.pg.flex.dto.response.CartResponse;
import com.pg.flex.dto.response.IsLikedResponse;
import com.pg.flex.dto.response.LikeResponse;
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

  ProductResponse getProductByProductIndex(GetProductWithLike query);

  void postProduct(ProductQuery query);

  IsLikedResponse isLiked(IsLiked isLiked);
  void addLike(IsLiked isLiked);
  void deleteLike(IsLikedResponse isLiked);

  void addToCart(IsLiked addToCart);
  void addToCartAll(List<LikeResponse> requestForm);

  List<CartResponse> getCartListByProductIndexAndUserId(List<LikeResponse> requestForm);

  void updateCartCount(List<AddCartRequest> requestForm);
  void addToCartFromLike(List<AddCartRequest> requestForm);
}
