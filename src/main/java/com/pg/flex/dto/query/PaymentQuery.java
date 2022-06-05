package com.pg.flex.dto.query;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class PaymentQuery {

  private int    paymentIndex;
  private String paymentBank;
  private String account;
  private int    isDefault;
  private String userId;
  private int    cvc;


  public PaymentQuery(int paymentIndex, String paymentBank, String account, int isDefault, String userId, int cvc) {
    this.paymentIndex = paymentIndex;
    this.paymentBank = paymentBank;
    this.account = account;
    this.isDefault = isDefault;
    this.userId = userId;
    this.cvc = cvc;
  }
  
}
