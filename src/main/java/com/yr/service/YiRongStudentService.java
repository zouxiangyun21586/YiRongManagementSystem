package com.yr.service;

import java.util.List;

import com.yr.model.Student;

/**
 * 学生功能接口
 * @author zxy-un
 * 2019年4月2日 下午3:24:50
 */
public interface YiRongStudentService {
	public Boolean inster(Student student);

	public Boolean remove(int stuId);

	public Boolean modify(Student student);

	public Student EchoDisplay(int stuId);

	public List<Student> query(int currPage, int pageSize);
}
