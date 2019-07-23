package com.spring.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Feedback")
public class Feedback {
	@Id
	@GeneratedValue
	private int slno;

	private int uid;
	@Column(name = "feedtext")
	private String feedtext;
	@Column(name = "module")
	private String module;

	public Feedback(int uid) {
		super();
		this.uid = uid;
	}

	public Feedback() {
		super();
	}

	public Feedback(int uid, String feedtext, String module, int slno) {
		super();
		this.uid = uid;
		this.feedtext = feedtext;
		this.module = module;
		this.slno = slno;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getFeedtext() {
		return feedtext;
	}

	public void setFeedtext(String feedtext) {
		this.feedtext = feedtext;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public int getSlno() {
		return slno;
	}

	public void setSlno(int slno) {
		this.slno = slno;
	}

}
