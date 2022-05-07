package com.pg.flex.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter @Setter
public class User {
    private String loginId;
    private String loginPassword;
    private String userName;
    private String userId;


    public User() {}


    public User(String loginId, String loginPassword, String userName, String userId) {
        this.loginId = loginId;
        this.loginPassword = loginPassword;
        this.userName = userName;
        this.userId = userId;
    }

    public User(String loginId, String loginPassword) {
        this.loginId = loginId;
        this.loginPassword = loginPassword;
    }
}
