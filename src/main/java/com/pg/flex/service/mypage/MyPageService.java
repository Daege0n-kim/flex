package com.pg.flex.service.mypage;

import com.pg.flex.dao.mypage.MyPage;
import com.pg.flex.dto.UserImage;
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
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageService {

  @Autowired
  private MyPage myPageDao;

  public UserDetailResponse getUserDetail(String userId) {
    return myPageDao.getUserDetail(userId);
  }

  public void postUserImage(UserImage userImage) {
    myPageDao.postUserImage(userImage);
  }

  public List<DeliveryResponse> getDeliveryAddress(String userId) {
    return myPageDao.getDeliveryAddress(userId);
  }

  public void postDeliveryAddress(DeliveryAddressRequestForm requestForm) {

    try {
      DeliveryAddressRequestForm query = hasDefaultDeliveryAddress(requestForm.getUserId());

      if(!Objects.isNull(query)) {
        myPageDao.fetchDeliveryAddress(query);
        myPageDao.postDeliveryAddress(requestForm);
      }
    } catch (Exception e) {
      myPageDao.postDeliveryAddress(requestForm);
    }
  }

  public DeliveryAddressRequestForm hasDefaultDeliveryAddress(String userId) {
    List<DeliveryResponse> deliveryList = getDeliveryAddress(userId);

    DeliveryResponse defaultDeliveryAddress = deliveryList.stream()
      .filter(deliveryAddress -> deliveryAddress.getIsDefault() == 1)
      .findFirst()
      .orElseThrow();

      DeliveryAddressRequestForm query = new DeliveryAddressRequestForm(
        defaultDeliveryAddress.getDeliveryIndex(),
        defaultDeliveryAddress.getAddressName(),
        defaultDeliveryAddress.getDeliveryAddress(),
        defaultDeliveryAddress.getUserId(),
        0
      );

      return query;
    }

    public int deleteDeliveryAddress(int deliveryIndex) {
      return myPageDao.deleteDeliveryAddress(deliveryIndex);
    }

    public void updateDeliveryAddress(DeliveryAddressRequestForm requestForm) {

      try {
        DeliveryAddressRequestForm query = hasDefaultDeliveryAddress(requestForm.getUserId());

        if(!Objects.isNull(query)) {
          myPageDao.fetchDeliveryAddress(query);
          myPageDao.fetchDeliveryAddress(requestForm);
        }
      } catch (Exception e) {
        myPageDao.fetchDeliveryAddress(requestForm);
      }

    }



    /* Payment */
    public List<PaymentResponse> getPaymentsByUserId(String userId) {
      return myPageDao.getPaymentsByUserId(userId);
    }

    public void postPayment(PaymentRequestForm requestForm) {

      if(requestForm.getIsDefault() == 1) {
        try {
          PaymentRequestForm hasDefaultPayment = hasDefaultPayment(requestForm.getUserId());
  
          if(!Objects.isNull(hasDefaultPayment)) {
            myPageDao.fetchPayment(hasDefaultPayment);
            myPageDao.postPayment(requestForm);
          }
        } catch (Exception e) {
          return;
        }
        
      } else {
        myPageDao.postPayment(requestForm);
      }
    }

    public int deletePayment(PaymentRequestForm requestForm) {
      return myPageDao.deletePayment(requestForm);
    }
    public void updateDefaultPayment(PaymentRequestForm requestForm) {
      try {
        PaymentRequestForm query = hasDefaultPayment(requestForm.getUserId());

        if(!Objects.isNull(query)) {
          myPageDao.fetchPayment(query);
          myPageDao.fetchPayment(requestForm);

        }
      } catch (Exception e) {
        myPageDao.fetchPayment(requestForm);
      }
    }

    public PaymentRequestForm hasDefaultPayment(String userId) {
    List<PaymentResponse> paymentList = getPaymentsByUserId(userId);

    PaymentResponse defaultPayment = paymentList.stream()
      .filter(payment -> payment.getIsDefault() == 1)
      .findFirst()
      .orElseThrow();

      PaymentRequestForm query = new PaymentRequestForm(
        defaultPayment.getPaymentIndex(), 
        defaultPayment.getPaymentBank(), 
        defaultPayment.getAccount(), 
        defaultPayment.getCvc(), 
        0,
        defaultPayment.getUserId()
      );

      return query;
    }
    /* Payment */

    public List<Cart> getCartList(String userId) {
      return myPageDao.getCartList(userId);
    }

    public void deleteCart(int cartIndex) {
      myPageDao.deleteCart(cartIndex);
    }

    public int increaseCart(int cartIndex) {
      return myPageDao.increaseCart(cartIndex);
    }
    
    public int decreaseCart(int cartIndex) {
      return myPageDao.decreaseCart(cartIndex);
    }

    public int getCartCount(int cartIndex) {
      return myPageDao.getCartCount(cartIndex);
    }

    public List<Like> getLikesByUserId(String userId) {
      return myPageDao.getLikesByUserId(userId);
    }

    public void deleteFromLike(int likeIndex) {
      myPageDao.deleteFromLike(likeIndex);
    }
    public void addToCartAll(AddToCartFromLike requestForm) {
      myPageDao.addToCartAll(requestForm);
    }

    public List<LikeResponse> getLikesByLikeIndex(List<AddToCartFromLike> requestForm) {
      return myPageDao.getLikesByListIndex(requestForm);
    }

    public void deleteFromLikeAll(List<AddToCartFromLike> requestForm) {
      myPageDao.deleteFromLikeAll(requestForm);
    }

    public List<CartResponseWithPrice> getCartListByCartIndex(List<CartIndexForPurchase> requestForm) {
      return myPageDao.getCartListByCartIndex(requestForm);
    }
}
