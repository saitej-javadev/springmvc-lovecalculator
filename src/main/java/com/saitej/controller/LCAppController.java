package com.saitej.controller;


import com.saitej.model.UserInfoDto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;

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
    public ModelAndView processHomePage(@ModelAttribute UserInfoDto userInfoDto){

        ModelAndView mav = new ModelAndView();
        mav.setViewName("result-page");

        return mav;

    }
}