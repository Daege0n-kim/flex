package com.pg.flex.dao.mypage;

import com.pg.flex.dto.UserImage;
import com.pg.flex.dto.query.DeliveryQuery;
import com.pg.flex.dto.request.DeliveryAddressRequestForm;
import com.pg.flex.dto.request.PaymentRequestForm;
import com.pg.flex.dto.response.DeliveryResponse;
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
  
}
