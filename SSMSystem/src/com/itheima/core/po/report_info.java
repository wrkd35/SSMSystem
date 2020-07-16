package com.itheima.core.po;

public class report_info {
	private String coCode;
	private String coName;
	private String teacherName;
	private float score;
	private double coCredit;
	private float gpa;
	public float getGpa() {
		return gpa;
	}
	public void setGpa(float gpa) {
		this.gpa = gpa;
	}
	public String getCoCode() {
		return coCode;
	}
	public String getCoName() {
		return coName;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public float getScore() {
		return score;
	}
	public double getCoCredit() {
		return coCredit;
	}
	public void setCoCode(String coCode) {
		this.coCode = coCode;
	}
	public void setCoName(String coName) {
		this.coName = coName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public void setCoCredit(double coCredit) {
		this.coCredit = coCredit;
	}
}	
