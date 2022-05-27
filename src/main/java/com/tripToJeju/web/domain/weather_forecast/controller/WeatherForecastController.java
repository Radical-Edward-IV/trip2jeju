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
@RequestMapping(value="/t2j")
public class WeatherForecastController {

	@Autowired
	WeatherForecastService wfService;
	@Autowired
	WeatherForecastControllerApi api;
	
	@LoginCheck
	@RequestMapping(value="/test")
	public String gasdassInfo() {
		
		return "review";
	}
	

	@RequestMapping(value="/test1")
	public String getSightsInfo(Model model) throws ParseException {
		Map<String, List<VisitJejuDTO>> map = api.getSightsInfo();

//		for(int i = 0; i < map.get("jeju").size(); i++) {
//			System.out.println("제주시 addr : " + map.get("jeju").get(i).getAddr() + " / category : " + map.get("jeju").get(i).getCategory() + " / title : " + map.get("jeju").get(i).getTitle() + " / introduction : " + map.get("jeju").get(i).getIntroduction() + " / tel : " + map.get("jeju").get(i).getTel() + " / photoDesc : " + map.get("jeju").get(i).getPhotoDesc() + " / thumbnail : " + map.get("jeju").get(i).getThumbnail() + " / photoPath " + map.get("jeju").get(i).getThumbnail() + " / region1 : " + map.get("jeju").get(i).getRegion1() + " / region2 : " + map.get("jeju").get(i).getRegion2());
//		}
//		
//		for(int i = 0; i < map.get("seogwipo").size(); i++) {
//			System.out.println("서귀포시 addr : " + map.get("seogwipo").get(i).getAddr() + " / category : " + map.get("seogwipo").get(i).getCategory() + " / title : " + map.get("seogwipo").get(i).getTitle() + " / introduction : " + map.get("seogwipo").get(i).getIntroduction() + " / tel : " + map.get("seogwipo").get(i).getTel() + " / photoDesc : " + map.get("seogwipo").get(i).getPhotoDesc() + " / thumbnail : " + map.get("seogwipo").get(i).getThumbnail() + " / photoPath " + map.get("seogwipo").get(i).getThumbnail() + " / region1 : " + map.get("seogwipo").get(i).getRegion1() + " / region2 : " + map.get("seogwipo").get(i).getRegion2());
//		}
		
		model.addAttribute("map", map);
		
		return "index";
	}
	
	@RequestMapping(value="/test2")
	public String getTciGradeInfo(Model model) throws ParseException {
		List<CityTciDTO> list = api.getTciGradeInfo();

		for(int i = 0; i < list.size(); i++) {
			System.out.println("list CityAreaId : " + list.get(i).getCityAreaId() + " / DoName : " + list.get(i).getDoName() + " / CityName : " + list.get(i).getCityName() + " / TciGrade : " + list.get(i).getTciGrade() + " / KmaTci : " + list.get(i).getKmaTci());
		}
		
		model.addAttribute("list", list);
		
		return "index";
	}
}
