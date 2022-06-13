package com.pg.flex.dao.mypage;

import com.pg.flex.dto.UserImage;
import com.pg.flex.dto.query.DeliveryQuery;
import com.pg.flex.dto.request.AddToCartFromLike;
import com.pg.flex.dto.request.CartIndexForPurchase;
import com.pg.flex.dto.request.DeliveryAddressRequestForm;
import com.pg.flex.dto.request.PaymentRequestForm;
import com.pg.flex.dto.response.Cart;
import com.pg.flex.dto.response.CartResponse;
import com.pg.flex.dto.response.CartResponseWithPrice;
import com.pg.flex.dto.response.DeliveryResponse;
import com.pg.flex.dto.response.Like;
import com.pg.flex.dto.response.LikeResponse;
import com.pg.flex.dto.response.PaymentResponse;
import com.pg.flex.dto.response.UserDetailResponse;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MyPage {

  public UserDetailResponse getUserDetail(String userId);

  public void postUserImage(UserImage userImage);

  public List<DeliveryResponse> getDeliveryAddress(String userId);

  public void postDeliveryAddress(DeliveryAddressRequestForm requestForm);

  public void fetchDeliveryAddress(Object query);

  public int deleteDeliveryAddress(int deliveryIndex);

  public int updateDeliveryAddress(DeliveryAddressRequestForm requestForm);

  public List<PaymentResponse> getPaymentsByUserId(String userId);

  public void postPayment(PaymentRequestForm requestForm);

  public int deletePayment(PaymentRequestForm requestForm);

  public void fetchPayment(PaymentRequestForm query);

  public List<Cart> getCartList(String userId);

  public void deleteCart(int cartIndex);

  public int increaseCart(int cartIndex);
  public int decreaseCart(int cartIndex);
  public int getCartCount(int cartIndex);
  
  public List<Like> getLikesByUserId(String userId);

  public void deleteFromLike(int likeIndex);
  public void addToCartAll(AddToCartFromLike requestForm);

  public List<LikeResponse> getLikesByListIndex(List<AddToCartFromLike> requestFrom);
  public void deleteFromLikeAll(List<AddToCartFromLike> requestForm);

  public List<CartResponseWithPrice> getCartListByCartIndex(List<CartIndexForPurchase> requestForm);
}
