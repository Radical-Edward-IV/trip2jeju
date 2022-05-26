package com.tripToJeju.web.domain.weather_forecast.domain;

import java.util.ArrayList;
import java.util.List;

public class VisitJejuDTO {
	String category;
	String title;
	String introduction;
	String addr;
	String tel;
	String photoDesc;
	String thumbnail;
	String photoPath;
	String region1;
	String region2;
	// 4개만 선택해서 가져오기
	List<String> tag = new ArrayList<>();

	public String getCategory() {
		return category;
	}

	public String getTitle() {
		return title;
	}

	public String getIntroduction() {
		return introduction;
	}

	public String getAddr() {
		return addr;
	}

	public String getTel() {
		return tel;
	}

	public String getPhotoDesc() {
		return photoDesc;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public String getPhotoPath() {
		return photoPath;
	}

	public String getRegion1() {
		return region1;
	}

	public String getRegion2() {
		return region2;
	}

	public List<String> getTag() {
		return tag;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public void setPhotoDesc(String photoDesc) {
		this.photoDesc = photoDesc;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	public void setRegion1(String region1) {
		this.region1 = region1;
	}

	public void setRegion2(String region2) {
		this.region2 = region2;
	}

	public void setTag(List<String> tag) {
		this.tag = tag;
	}
}
