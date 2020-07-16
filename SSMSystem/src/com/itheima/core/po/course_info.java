package com.itheima.core.po;

public class course_info {
    private Integer coId;

    private String coCode;

    private String coName;

    private Integer coStatus;

    private Float coCredit;

    private Integer coNumber;

    private String coTime;

    private Integer teacherId;

    private String teacherName;

    private String coAddress;

    private Integer coSelected;

    public Integer getCoId() {
        return coId;
    }

    public void setCoId(Integer coId) {
        this.coId = coId;
    }

    public String getCoCode() {
        return coCode;
    }

    public void setCoCode(String coCode) {
        this.coCode = coCode == null ? null : coCode.trim();
    }

    public String getCoName() {
        return coName;
    }

    public void setCoName(String coName) {
        this.coName = coName == null ? null : coName.trim();
    }

    public Integer getCoStatus() {
        return coStatus;
    }

    public void setCoStatus(Integer coStatus) {
        this.coStatus = coStatus;
    }

    public Float getCoCredit() {
        return coCredit;
    }

    public void setCoCredit(Float coCredit) {
        this.coCredit = coCredit;
    }

    public Integer getCoNumber() {
        return coNumber;
    }

    public void setCoNumber(Integer coNumber) {
        this.coNumber = coNumber;
    }

    public String getCoTime() {
        return coTime;
    }

    public void setCoTime(String coTime) {
        this.coTime = coTime == null ? null : coTime.trim();
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName == null ? null : teacherName.trim();
    }

    public String getCoAddress() {
        return coAddress;
    }

    public void setCoAddress(String coAddress) {
        this.coAddress = coAddress == null ? null : coAddress.trim();
    }

    public Integer getCoSelected() {
        return coSelected;
    }

    public void setCoSelected(Integer coSelected) {
        this.coSelected = coSelected;
    }
}