package com.tripToJeju.web.domain.weather_forecast.controller;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tripToJeju.web.domain.weather_forecast.service.WeatherForecastService;
import com.tripToJeju.web.global.common.OpenApi;
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

	@RequestMapping(value="")
	public String getSightsInfo(Model model) throws ParseException {
		OpenApi openApi = new OpenApi();
		model.addAttribute("c", openApi.getSightsInfo());
		model.addAttribute("tciGradeInfo", openApi.getTciGradeInfo());
		return "index";
	}

}
