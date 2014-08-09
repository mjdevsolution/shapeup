package com.shapeup.persistence.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

/**
 * @author Sasikaran
 * 
 */
@MappedSuperclass
public abstract class BaseAttendance extends BaseEntity {
	
	@Column(name = "ATTEND_DATE")
	private Calendar attendDate;

	@Column(name = "IN_TIME")
	private String inTime;
	
	@Column(name = "OUT_TIME")
	private String outTime;

	public Calendar getAttendDate() {
		return attendDate;
	}

	public void setAttendDate(Calendar attendDate) {
		this.attendDate = attendDate;
	}

	public String getInTime() {
		return inTime;
	}

	public void setInTime(String inTime) {
		this.inTime = inTime;
	}

	public String getOutTime() {
		return outTime;
	}

	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}
	
	
}
