package com.tripToJeju.web.domain.weather_forecast.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tripToJeju.web.domain.weather_forecast.domain.VisitJejuDTO;

@Controller
public class WeatherForecastController {

	@RequestMapping(value="/test")
	public String gasdassInfo() {
		return "review";
	}
	

}
