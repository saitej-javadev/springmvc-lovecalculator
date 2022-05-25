package com.saitej.model;

import java.util.Arrays;
import java.util.List;

public class UserRegistrationDto {

    private String name;
    private String userName;
    private char[] password;
    private String countryName;
    private List<String> hobbies;
    private String gender;



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public char[] getPassword() {
        return password;
    }

    public void setPassword(char[] password) {
        this.password = password;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public List<String> getHobbies() {
        return hobbies;
    }

    public void setHobbies(List<String> hobbies) {
        this.hobbies = hobbies;
    }


    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "UserRegistrationDto{" +
                "name='" + name + '\'' +
                ", userName='" + userName + '\'' +
                ", password=" + Arrays.toString(password) +
                ", countryName='" + countryName + '\'' +
                ", hobbies=" + hobbies +
                ", gender='" + gender + '\'' +
                '}';
    }
}
