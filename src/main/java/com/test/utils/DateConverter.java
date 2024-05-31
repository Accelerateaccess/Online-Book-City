package com.test.utils;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConverter implements Converter<String, Date> {
    @Override
    public Date convert(String date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        if (date!=null){

            try {
                return dateFormat.parse(date);
            } catch (ParseException e) {
                e.printStackTrace();
            }

        }


        return null;
    }
}
