package com.itheima.core.po;

public class course_detail_info {
    private Integer deId;

    private Integer coId;

    private Integer studentId;

    private String studentName;

    private Integer teacherId;

    private String teacherName;

    private Float deScore;

    private Integer deStatus;

    public Integer getDeId() {
        return deId;
    }

    public void setDeId(Integer deId) {
        this.deId = deId;
    }

    public Integer getCoId() {
        return coId;
    }

    public void setCoId(Integer coId) {
        this.coId = coId;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName == null ? null : studentName.trim();
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

    public Float getDeScore() {
        return deScore;
    }

    public void setDeScore(Float deScore) {
        this.deScore = deScore;
    }

    public Integer getDeStatus() {
        return deStatus;
    }

    public void setDeStatus(Integer deStatus) {
        this.deStatus = deStatus;
    }
}