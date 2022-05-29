package com.tripToJeju.web.domain.weather_forecast.api;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tripToJeju.web.domain.weather_forecast.domain.CityTciDTO;
import com.tripToJeju.web.domain.weather_forecast.domain.VisitJejuDTO;
import com.tripToJeju.web.global.common.StringFromURL;

/*
 * 	<<Restful>>
 * get - 조회			post - 추가
 * put - 수정/업데이트		delete - 삭제
 */
@RestController
@RequestMapping(value="/t2jApi")
public class WeatherForecastControllerApi {

	

}
