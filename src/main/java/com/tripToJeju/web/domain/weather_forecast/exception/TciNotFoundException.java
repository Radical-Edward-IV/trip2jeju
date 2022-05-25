package com.tripToJeju.web.domain.weather_forecast.exception;

public class TciNotFoundException extends Exception {

	TciNotFoundException(){};

	TciNotFoundException(String msg){
		super(msg);
	}
}
