package com.spring.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Leaver")
public class Leaver {
	@Id
	@GeneratedValue
	@Column(name = "slno")
	private int slno;
	@Column(name = "uid")
	private int uid;
	@Column(name = "startdate")
	private String startdate;
	@Column(name = "enddate")
	private String enddate;
	@Column(name = "reason")
	private String reason;
	@Column(name = "status")
	private String status;

	public Leaver(int uid) {
		super();
		this.uid = uid;
	}

	public Leaver() {
		super();
	}

	public Leaver(int uid, String startdate, String enddate, String reason, String status) {
		super();
		this.uid = uid;
		this.startdate = startdate;
		this.enddate = enddate;
		this.reason = reason;
		this.status = status;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
