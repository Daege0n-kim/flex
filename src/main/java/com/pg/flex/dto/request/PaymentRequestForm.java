package com.pg.flex.dto.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class PaymentRequestForm {

  private int    paymentIndex;
  private String paymentBank;
  private String account;
  private int    cvc;
  private int    isDefault;
  private String userId;
  

  public PaymentRequestForm() {}

  public PaymentRequestForm(int paymentIndex) {
    this.paymentIndex = paymentIndex;
  }
  public PaymentRequestForm(int paymentIndex, String paymentBank) {
    this.paymentIndex = paymentIndex;
    this.paymentBank = paymentBank;
  }
  public PaymentRequestForm(int paymentIndex, String paymentBank, String account) {
    this.paymentIndex = paymentIndex;
    this.paymentBank = paymentBank;
    this.account = account;
  }
  public PaymentRequestForm(int paymentIndex, String paymentBank, String account, int cvc) {
    this.paymentIndex = paymentIndex;
    this.paymentBank = paymentBank;
    this.account = account;
    this.cvc = cvc;
  }
  public PaymentRequestForm(int paymentIndex, String paymentBank, String account, int cvc, int isDefault) {
    this.paymentIndex = paymentIndex;
    this.paymentBank = paymentBank;
    this.account = account;
    this.cvc = cvc;
    this.isDefault = isDefault;
  }
  public PaymentRequestForm(int paymentIndex, String paymentBank, String account, int cvc, int isDefault, String userId) {
    this.paymentIndex = paymentIndex;
    this.paymentBank = paymentBank;
    this.account = account;
    this.cvc = cvc;
    this.isDefault = isDefault;
    this.userId = userId;
  }

  public PaymentRequestForm(int paymentIndex, int isDefault, String userId) {
    this.paymentIndex = paymentIndex;
    this.isDefault = isDefault;
    this.userId = userId;
  }

}
