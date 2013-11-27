package com.tackit.domain;

import java.util.Date;

public class Tack {
	
	private Integer id;
	private Integer tackCategoryId;
	private String title;
	private String description;
	private String link;
	private boolean isPrivate;
	private boolean isActive;
	private Date createDate;
	private Date updateDate;
	private Double tackRating;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getTackCategoryId() {
		return tackCategoryId;
	}
	public void setTackCategoryId(Integer tackCategoryId) {
		this.tackCategoryId = tackCategoryId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public boolean isPrivate() {
		return isPrivate;
	}
	public void setPrivate(boolean isPrivate) {
		this.isPrivate = isPrivate;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public Double getTackRating() {
		return tackRating;
	}
	public void setTackRating(Double tackRating) {
		this.tackRating = tackRating;
	}
}
