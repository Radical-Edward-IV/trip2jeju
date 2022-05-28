package com.tripToJeju.web.domain.weather_forecast.controller;

import java.util.List;
import java.util.Map;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tripToJeju.web.domain.weather_forecast.api.WeatherForecastControllerApi;
import com.tripToJeju.web.domain.weather_forecast.domain.CityTciDTO;
import com.tripToJeju.web.domain.weather_forecast.domain.VisitJejuDTO;
import com.tripToJeju.web.domain.weather_forecast.service.WeatherForecastService;
import com.tripToJeju.web.global.config.aop.LoginCheck;

@Controller
public class WeatherForecastController {

	@Autowired
	WeatherForecastService wfService;

	@Autowired
	WeatherForecastControllerApi wfcApi;

	@LoginCheck
	@RequestMapping(value="/test")
	public String gasdassInfo() {
		return "review";
	}

	@RequestMapping(value="")
	public String getSightsInfo(Model model) throws ParseException {
		Map<String, List<VisitJejuDTO>> sightsInfoMap = wfcApi.getSightsInfo();
		List<CityTciDTO> tciGradeInfoLs = wfcApi.getTciGradeInfo();
		model.addAttribute("sightsInfo", sightsInfoMap);
		model.addAttribute("tciGradeInfo", tciGradeInfoLs);
		return "index";
	}

}
