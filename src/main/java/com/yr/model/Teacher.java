package com.yr.model;

/**
 * 老师实体类
 * @author zxy-un 
 * 2019年4月2日 下午3:18:31
 */
public class Teacher {
	private int teaId; // 老师编号
	private String teaSex; // 老师性别
	private String teaName; // 老师姓名
	private String teaTell; // 老师电话
	private String teaGrade; // 老师等级
	private Student teaStudent; // 老师的学生

	public int getTeaId() {
		return teaId;
	}

	public void setTeaId(int teaId) {
		this.teaId = teaId;
	}

	public String getTeaSex() {
		return teaSex;
	}

	public void setTeaSex(String teaSex) {
		this.teaSex = teaSex;
	}

	public String getTeaName() {
		return teaName;
	}

	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}

	public String getTeaTell() {
		return teaTell;
	}

	public void setTeaTell(String teaTell) {
		this.teaTell = teaTell;
	}

	public String getTeaGrade() {
		return teaGrade;
	}

	public void setTeaGrade(String teaGrade) {
		this.teaGrade = teaGrade;
	}

	public Student getTeaStudent() {
		return teaStudent;
	}

	public void setTeaStudent(Student teaStudent) {
		this.teaStudent = teaStudent;
	}

	@Override
	public String toString() {
		return "Teacher [teaId=" + teaId + ", teaSex=" + teaSex + ", teaName=" + teaName + ", teaTell=" + teaTell
				+ ", teaGrade=" + teaGrade + ", teaStudent=" + teaStudent + "]";
	}

}
