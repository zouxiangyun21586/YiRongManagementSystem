package com.yr.model;

import java.util.Date;

/**
 * 学生实体类
 * @author zxy-un 
 * 2019年4月2日 下午3:18:19
 */
public class Student {
	private int stuId; // 学生编号
//	private int teaID; // 老师ID
//	private int patID; // 监护人ID
	private String stuSex; // 学生性别
	private String stuName; // 学生姓名
	private String stuAddr; // 学生地址
	private String stuTell; // 学生电话
	private String stuStatus; // 学生状态 0在校 1毕业
	private Date admissionTime; // 入学时间
	private Date graduationTime; // 毕业时间

	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	public String getStuTell() {
		return stuTell;
	}

	public void setStuTell(String stuTell) {
		this.stuTell = stuTell;
	}

	public String getStuSex() {
		return stuSex;
	}

	public void setStuSex(String stuSex) {
		this.stuSex = stuSex;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getStuAddr() {
		return stuAddr;
	}

	public void setStuAddr(String stuAddr) {
		this.stuAddr = stuAddr;
	}

	public String getStuStatus() {
		return stuStatus;
	}

	public void setStuStatus(String stuStatus) {
		this.stuStatus = stuStatus;
	}

	public Date getAdmissionTime() {
		return admissionTime;
	}

	public void setAdmissionTime(Date admissionTime) {
		this.admissionTime = admissionTime;
	}

	public Date getGraduationTime() {
		return graduationTime;
	}

	public void setGraduationTime(Date graduationTime) {
		this.graduationTime = graduationTime;
	}

	@Override
	public String toString() {
		return "Student [stuId=" + stuId + ", stuTell=" + stuTell + ", stuSex=" + stuSex + ", stuName=" + stuName
				+ ", stuAddr=" + stuAddr + ", stuStatus=" + stuStatus + ", admissionTime=" + admissionTime
				+ ", graduationTime=" + graduationTime + "]";
	}

}
