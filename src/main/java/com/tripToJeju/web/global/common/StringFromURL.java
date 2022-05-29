package com.tripToJeju.web.global.common;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class StringFromURL {

	/**
	 * 파라미터 값으로 전달받은 url에 접속하여 얻은 정보를 String으로 반환한다.
	 * @param url
	 * @return String
	 */
	public static String getStringFromURL(String url) {
		StringBuilder result = null;
		
		try {
			URL urlObj = new URL(url);
			HttpURLConnection conn = (HttpURLConnection) urlObj.openConnection();
			conn.setConnectTimeout(5000);
			conn.setReadTimeout(5000);
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");

			BufferedReader br;
			if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
	        } else {
	            br = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "UTF-8"));
	        }

			String line;
			result = new StringBuilder();
			while((line = br.readLine()) != null) {
				result.append(line);
			}
			br.close();
			conn.disconnect();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result.toString();
	}

}
