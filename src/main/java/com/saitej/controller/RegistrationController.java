package com.saitej.controller;

import com.saitej.model.UserRegistrationDto;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegistrationController {

    @RequestMapping("/register")
    public String showRegistrationPage(@ModelAttribute("userRegDto") UserRegistrationDto userRegistrationDto){
        userRegistrationDto.setName("Rose");
        return "user-registration-page";
    }

    @RequestMapping("/registration-success")
    public String registrationSuccessPage(@ModelAttribute("userRegDto") UserRegistrationDto userRegistrationDto){
        return "user-registration-success";
    }
}
