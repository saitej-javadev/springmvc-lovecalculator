package com.saitej.model;

public class UserInfoDto {

    private String yourName = "Romeo";
    private String crushName ="Juliet";

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

    @Override
    public String toString() {
        return "UserInfoDto{" +
                "yourName='" + yourName + '\'' +
                ", crushName='" + crushName + '\'' +
                '}';
    }
}
