package com.tripToJeju.web.domain.weather_forecast.exception;

import org.springframework.stereotype.Component;

@Component
public class TciNotFoundException extends Exception {

	TciNotFoundException(){};

	TciNotFoundException(String msg){
		super(msg);
	}
}
