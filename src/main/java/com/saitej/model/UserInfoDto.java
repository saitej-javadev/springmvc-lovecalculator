package com.saitej.model;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class UserInfoDto {

    /*private String yourName = "Romeo";
    private String crushName ="Juliet";*/

    @NotBlank(message = "* your name cannot be blank")
    @Size(min=3, max = 10,message = "* Your name should be in between 3 and 15 characters")
    private String yourName ;
    private String crushName ;
    @AssertTrue(message = "* Agree to move ahead!!")
    private boolean termAndCondition;

    public UserInfoDto(String yourName, String crushName) {
        this.yourName = yourName;
        this.crushName = crushName;
    }

    public UserInfoDto() {
    }

    public String getYourName() {
        return yourName;
    }

    public void setYourName(String yourName) {
        this.yourName = yourName;
    }

    public String getCrushName() {
        return crushName;
    }

    public void setCrushName(String crushName) {
        this.crushName = crushName;
    }

    public boolean isTermAndCondition() {
        return termAndCondition;
    }

    public void setTermAndCondition(boolean termAndCondition) {
        this.termAndCondition = termAndCondition;
    }

    @Override
    public String toString() {
        return "UserInfoDto{" +
                "yourName='" + yourName + '\'' +
                ", crushName='" + crushName + '\'' +
                '}';
    }
}
