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

	@RequestMapping(value="/getSightsInfoApi")
	public Map<String, List<VisitJejuDTO>> getSightsInfo() throws ParseException {
		Map<String, List<VisitJejuDTO>> resultMap = new HashMap<>();
		List<VisitJejuDTO> jejuLs = new ArrayList<>();
		List<VisitJejuDTO> seogwipoLs = new ArrayList<>();

		// 1. Visit Jeju api 서비스를 이용해서 관광지 정보를 가져온다.
		String endPoint = "http://api.visitjeju.net/vsjApi/contents/searchList";
		String serviceKey = "tdtvfa4bt865eb9a";

		StringBuffer url = new StringBuffer(endPoint);
		url.append("?apiKey=" + serviceKey);
		url.append("&locale=kr");
		String result = StringFromURL.getStringFromURL(url.toString());

		// 2. Visit Jeju api 서비스를 이용해서 가져온 관광지 정보를 Json으로 파싱한다.
		JSONParser jsonParser = new JSONParser();
		
		Object obj = jsonParser.parse(result);

		if(obj instanceof JSONObject) {
			JSONObject json = (JSONObject) obj;
			JSONArray jsonArr = (JSONArray) json.get("items");
			for(int i = 0; i < jsonArr.size(); i++) {
				json = (JSONObject) jsonArr.get(i);
				
				// Json으로 파싱된 정보를 Null 체크하여 변수에 담는다.
				String category = Optional.ofNullable((JSONObject) json.get("contentscd"))
						.map(e -> (String) e.get("label")).orElse("");
				String title = Optional.ofNullable((String) json.get("title")).orElse("");
				String introduction = Optional.ofNullable((String) json.get("introduction")).orElse("");
				String addr = Optional.ofNullable((String) json.get("roadaddress")).orElse("");
				String tel = Optional.ofNullable((String) json.get("phoneno")).orElse("");
				String photoDesc = Optional.ofNullable((JSONObject) json.get("repPhoto"))
						.map(e -> (String) e.get("descseo")).orElse("");
				String thumbnail = Optional.ofNullable((JSONObject) json.get("repPhoto"))
						.map(e -> (JSONObject) e.get("photoid"))
						.map(e -> (String) e.get("thumbnailpath")).orElse("");
				String photoPath = Optional.ofNullable((JSONObject) json.get("repPhoto"))
						.map(e -> (JSONObject) e.get("photoid"))
						.map(e -> (String) e.get("imgpath")).orElse("");
				String region1 = Optional.ofNullable((JSONObject) json.get("region1cd"))
						.map(e -> (String) e.get("label")).orElse("");
				String region2 = Optional.ofNullable((JSONObject) json.get("region2cd"))
						.map(e -> (String) e.get("label")).orElse("");
				List tags = Arrays.asList(Optional.ofNullable((String) json.get("tag"))
					.orElse("")
					.trim().split(","))
					.stream().limit(4).toList();
				
				// 변수에 담긴 정보를 VisitJejuDTO 오브젝트에 Set 한다. 
				VisitJejuDTO dto = new VisitJejuDTO();
				dto.setCategory(category);
				dto.setTitle(title);
				dto.setIntroduction(introduction);
				dto.setAddr(addr);
				dto.setTel(tel);
				dto.setPhotoDesc(photoDesc);
				dto.setThumbnail(thumbnail);
				dto.setPhotoPath(photoPath);
				dto.setRegion1(region1);
				dto.setRegion2(region2);
				dto.setTag(tags);

				if(dto.getRegion1().equals("서귀포시")) {
					jejuLs.add(dto);
				} else {
					seogwipoLs.add(dto);
				}
			}
			
			resultMap.put("jeju", jejuLs);
			resultMap.put("seogwipo", seogwipoLs);
		} else if(obj instanceof JSONArray) {
			JSONArray jsonArr = (JSONArray) obj;
		}
		return resultMap;
	}

	@RequestMapping(value="/getTciGradeInfoApi")
	public List getTciGradeInfo() throws ParseException {
		List<CityTciDTO> cityTciDtoLs = new ArrayList<>();

		// 1. 공공데이터 api 서비스를 이용해서 관광지 정보를 가져온다.
		String endPoint = "http://apis.data.go.kr/1360000/TourStnInfoService/getCityTourClmIdx";
		String serviceKey = "7UrQgUW1%2F4b4FgArQoBNlq5ZzK18Ubsl%2B4d6Mk8e%2BrkQXxw4okB8veT4ulsbkiapBkyNwPeAWoAHiyLcCSQHuQ%3D%3D";
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String currentDate = format.format(date);
		String day = "7";
		// 제주시, 서귀포시 중에서 하나의 입력값을 사용자에게 받아서 정보를 요청한다.
		boolean jejusi = false;
		String cityAreaId = jejusi? "5011000000" : "5013000000";

		StringBuffer url = new StringBuffer(endPoint);
		url.append("?serviceKey=" + serviceKey);
		url.append("&pageNo=1");
		url.append("&numOfRows=10");
		url.append("&dataType=JSON");
		url.append("&CURRENT_DATE=" + currentDate);
		url.append("&DAY=" + day);
		url.append("&CITY_AREA_ID=" + cityAreaId);
		String result = StringFromURL.getStringFromURL(url.toString());

		// 2. 공공데이터 api 서비스를 이용해서 가져온 관광지 정보를 Json으로 파싱한다.
		JSONParser jsonParser = new JSONParser();
		
		Object obj = jsonParser.parse(result);
		
		if(obj instanceof JSONObject) {
			JSONObject json = (JSONObject) obj;
			json = Optional.ofNullable((JSONObject) json.get("response"))
					.map(e -> (JSONObject) e.get("body"))
					.map(e -> (JSONObject) e.get("items")).orElse(null);
			JSONArray jsonArr = Optional.ofNullable(json).map(e -> (JSONArray) e.get("item"))
					.orElseThrow();   // .orElseThrow(TciNotFoundException::new); 에러 이유 찾기
			
			for(int i = jsonArr.size() - 1; i >= 0; i--) {
				json = (JSONObject) jsonArr.get(i);
				CityTciDTO dto = new CityTciDTO();

				dto.setCityAreaId(Optional.ofNullable((String) json.get("cityAreaId")).orElse(""));
				dto.setDoName(Optional.ofNullable((String) json.get("doName")).orElse(""));
				dto.setCityName(Optional.ofNullable((String) json.get("cityName")).orElse(""));
				dto.setTciGrade(Optional.ofNullable((String) json.get("TCI_GRADE")).orElse(""));
				dto.setKmaTci(Optional.ofNullable((double) json.get("kmaTci")).orElse(0.0));
				String from = Optional.ofNullable((String) json.get("tm")).orElse("");
				SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
				try {
					Date to = fm.parse(from);
					dto.setTm(to);
				} catch (java.text.ParseException e) {
					e.printStackTrace();
				}
				dto.setTotalCityName(Optional.ofNullable((String) json.get("totalCityName")).orElse(""));
				cityTciDtoLs.add(dto);
			}
		} else if(obj instanceof JSONArray) {
			JSONArray jsonArr = (JSONArray) obj;
		}
		
		return cityTciDtoLs;
	}

}
