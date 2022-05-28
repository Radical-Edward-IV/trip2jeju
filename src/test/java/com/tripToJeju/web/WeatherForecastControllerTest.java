package com.tripToJeju.web;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

import org.json.simple.parser.ParseException;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tripToJeju.web.domain.weather_forecast.api.WeatherForecastControllerApi;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
		,"file:src/main/webapp/WEB-INF/spring/root-context.xml"
})
public class WeatherForecastControllerTest {

	@Autowired
	WeatherForecastControllerApi wfcApi;

	@Test
	public void 관광지_정보_반환하기() throws ParseException {
		assertThat(wfcApi.getSightsInfo().get("jeju").size() + wfcApi.getSightsInfo().get("seogwipo").size(), is(100));
	}

}
