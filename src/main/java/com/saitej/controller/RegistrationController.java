package com.saitej.controller;

import com.saitej.model.CommunicatonDto;
import com.saitej.model.PhoneDto;
import com.saitej.model.UserRegistrationDto;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
public class RegistrationController {

    @RequestMapping("/register")
    public String showRegistrationPage(@ModelAttribute  UserRegistrationDto userRegistrationDto ){



        PhoneDto phoneDto = new PhoneDto();
        phoneDto.setCountryCode("+145");
        phoneDto.setUserNumber("1526355");

        CommunicatonDto communicatonDto = new CommunicatonDto();
        communicatonDto.setPhoneDto(phoneDto);
        userRegistrationDto.setCommunicatonDto(communicatonDto);

        return "user-registration-page";
    }

    @RequestMapping("/registration-success")
    public String registrationSuccessPage(@ModelAttribute @Valid UserRegistrationDto userRegistrationDto , BindingResult result){
        if(result.hasErrors()){
            System.out.println("In errors block");
            return "user-registration-page";
        }
        return "user-registration-success";
    }
}
