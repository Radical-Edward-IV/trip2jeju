package com.tripToJeju.web.domain.weather_forecast.domain;

import java.util.Date;

public class CityTciDTO {
	String cityAreaId;
	String doName;
	String cityName;
	String tciGrade;
	// 관광기후지수
	double kmaTci;
	Date tm;
	String totalCityName;

	public String getCityAreaId() {
		return cityAreaId;
	}
	public String getDoName() {
		return doName;
	}
	public String getCityName() {
		return cityName;
	}
	public String getTciGrade() {
		return tciGrade;
	}
	public double getKmaTci() {
		return kmaTci;
	}
	public Date getTm() {
		return tm;
	}
	public String getTotalCityName() {
		return totalCityName;
	}
	public void setCityAreaId(String cityAreaId) {
		this.cityAreaId = cityAreaId;
	}
	public void setDoName(String doName) {
		this.doName = doName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public void setTciGrade(String tciGrade) {
		this.tciGrade = tciGrade;
	}
	public void setKmaTci(double kmaTci) {
		this.kmaTci = kmaTci;
	}
	public void setTm(Date tm) {
		this.tm = tm;
	}
	public void setTotalCityName(String totalCityName) {
		this.totalCityName = totalCityName;
	}

}
