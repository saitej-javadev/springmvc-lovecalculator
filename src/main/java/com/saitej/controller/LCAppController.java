package com.saitej.controller;


import com.saitej.model.UserInfoDto;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
public class LCAppController {

    //Type-1
  /*  @RequestMapping("/landing")
    public String showHomePage(Model model) {
        UserInfoDto userInfoDto = new UserInfoDto();
        model.addAttribute("userInfoDto",userInfoDto);
        return "home-page";
   } */


  //Type-2//@ModelAttribute automatically binds form fields with userInfoDto class fields and make us avaliable in the view page
  @RequestMapping("/landing")
  public String showHomePage(@ModelAttribute  UserInfoDto userInfoDto) {
      return "home-page";

  }
   /* @RequestMapping("/process-homepage")
    public String processHomePage(@RequestParam("yourName") String yourName,
                                  @RequestParam("crushName") String crushName,
                                  Model model){

        model.addAttribute("yourName",yourName);
        model.addAttribute("crushName",crushName);

        return "result-page";
    }*/

    @RequestMapping("/process-homepage")
    public String processHomePage( @ModelAttribute @Valid UserInfoDto userInfoDto, BindingResult result){

        if(result.hasErrors()){

            List<ObjectError> allErrors = result.getAllErrors();
            allErrors.stream().forEach(System.out::println);

            return "home-page";
        }


        return "result-page";

    }
}