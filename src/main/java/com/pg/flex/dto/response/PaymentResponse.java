package com.pg.flex.dto.response;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class PaymentResponse {

  private int    paymentIndex;
  private String paymentBank;
  private String account;
  private int    isDefault;
  private String userId;
  private int    cvc;
  
}
