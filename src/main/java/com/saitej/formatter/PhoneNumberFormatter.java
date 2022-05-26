package com.saitej.formatter;

import com.saitej.model.PhoneDto;
import org.springframework.format.Formatter;

import java.text.ParseException;
import java.util.Locale;

public class PhoneNumberFormatter implements Formatter<PhoneDto> {


    @Override
    public PhoneDto parse(String completePhoneNumber, Locale locale) throws ParseException {
        PhoneDto phoneDto = new PhoneDto();
        String[] phoneNumberArray = completePhoneNumber.split("-");
        int index = completePhoneNumber.indexOf('-');
        if(completePhoneNumber.startsWith("-")){
            phoneDto.setCountryCode("91");
            phoneDto.setUserNumber(phoneNumberArray[1]);
        }
        else if (index == -1) {
            phoneDto.setCountryCode("91");
            phoneDto.setUserNumber(phoneNumberArray[0]);
        } else {
            phoneDto.setCountryCode(phoneNumberArray[0]);
            phoneDto.setUserNumber(phoneNumberArray[1]);
        }
        return phoneDto;

    }

    @Override
    public String print(PhoneDto phoneDto, Locale locale) {


        return phoneDto.getCountryCode() + "-" + phoneDto.getUserNumber();
    }
}
