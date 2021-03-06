package com.pg.flex.dao.mypage;

import com.pg.flex.dto.UserImage;
import com.pg.flex.dto.query.AddTotalPrice;
import com.pg.flex.dto.query.DeliveryQuery;
import com.pg.flex.dto.query.PostBoardQueryForm;
import com.pg.flex.dto.query.RelatedProductQuery;
import com.pg.flex.dto.query.UpdateUserInformQuery;
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
import com.pg.flex.dto.response.OrderedResponse;
import com.pg.flex.dto.response.PaymentResponse;
import com.pg.flex.dto.response.ProductResponse;
import com.pg.flex.dto.response.RelatedResponse;
import com.pg.flex.dto.response.SneakersResponse;
import com.pg.flex.dto.response.UserBoardResponse;
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

  public PaymentResponse selectPaymentByPaymentIndex(int paymentIndex);

  public void addTotalPrice(AddTotalPrice query);

  public void insertPurchaseHistory(List<CartIndexForPurchase> requestForm);

  public List<OrderedResponse> getOrderedList(String userId);

  public void updateUserInform(UpdateUserInformQuery query);

  public List<ProductResponse> searchProductBySearchKey(String searchKey);

  public void postBoard(PostBoardQueryForm query);

  public void postRelatedProduct(List<RelatedProductQuery> requestForm);

  public List<UserBoardResponse> getBoardsByUserId(String userId);

  public List<String> getRelatedProductByBoardIndex(int boardIndex);

  public List<UserBoardResponse> getBoardsForMainPage();

  public List<SneakersResponse> getSneakers();

  public List<SneakersResponse> getJodan();

  public List<SneakersResponse> getStone();

  public List<SneakersResponse> getCommon();
}
