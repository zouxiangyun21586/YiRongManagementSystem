package com.yr.mapper;

import java.util.List;

import com.yr.model.Page;
import com.yr.model.Student;

/**
 * 学生操作接口
 * @author zxy-un
 * 2019年4月2日 下午3:19:06
 */
public interface YiRongStudentModel {
	public void inster(Student student);

	public void remove(int stuId);

	public void modify(Student student);

	public Student EchoDisplay(int stuId);

	public List<Student> query();
	
	public int getCont();
	
	public List<Student> studentPage(Page page);
}
