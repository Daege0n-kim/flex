package com.pg.flex.dto.query;

import com.pg.flex.dto.request.DeliveryAddressRequestForm;

import lombok.Generated;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
@Generated
public class DeliveryQuery {

  private int    deliveryIndex;
  private String deliveryAddress;
  private String userId;
  private String addressName;
  private int    isDefault;


  public DeliveryQuery(int deliveryIndex, String deliveryAddress, String userId, String addressName, int isDefault) {
    this.deliveryIndex = deliveryIndex;
    this.deliveryAddress = deliveryAddress;
    this.userId = userId;
    this.addressName = addressName;
    this.isDefault = isDefault;
  }

}

