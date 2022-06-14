package com.pg.flex.dto.request;

import lombok.Generated;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
@Generated
public class DeliveryAddressRequestForm {

  private int deliveryIndex;
  private String addressName;
  private String deliveryAddress;
  private String userId;
  private int isDefault;
  

  public DeliveryAddressRequestForm() {}

  public DeliveryAddressRequestForm(String addressName, String deliveryAddress,  int isDefault) {
    this.addressName = addressName;
    this.deliveryAddress = deliveryAddress;
    this.isDefault = isDefault;
  }

  public DeliveryAddressRequestForm(int deliveryIndex, String addressName, String deliveryAddress, String userId, int isDefault) {
    this.deliveryIndex = deliveryIndex;
    this.addressName = addressName;
    this.deliveryAddress = deliveryAddress;
    this.userId = userId;
    this.isDefault = isDefault;
  }

}
