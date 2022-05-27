package com.tripToJeju.web.domain.weather_forecast.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tripToJeju.web.domain.weather_forecast.service.WeatherForecastService;
import com.tripToJeju.web.global.config.aop.LoginCheck;

@Controller
public class WeatherForecastController {

	@Autowired
	WeatherForecastService wfService;
	
	@LoginCheck
	@RequestMapping(value="/test")
	public String gasdassInfo() {
		return "review";
	}
	

}
