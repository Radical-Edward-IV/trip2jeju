package com.tripToJeju.web;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

import org.json.simple.parser.ParseException;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tripToJeju.web.global.common.OpenApi;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
		,"file:src/main/webapp/WEB-INF/spring/root-context.xml"
})
public class WeatherForecastControllerTest {

	@Test
	public void 관광지_정보_반환하기() throws ParseException {
		OpenApi openApi = new OpenApi();
		assertThat(openApi.getSightsInfo().get("jeju").size() + openApi.getSightsInfo().get("seogwipo").size(), is(100));
	}

}
