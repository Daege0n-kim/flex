package com.pg.flex.dto.response;

import lombok.Generated;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
@Generated
public class DeliveryResponse {

  private int    deliveryIndex;
  private String deliveryAddress;
  private String userId;
  private String addressName;
  private int    isDefault;
  
}
