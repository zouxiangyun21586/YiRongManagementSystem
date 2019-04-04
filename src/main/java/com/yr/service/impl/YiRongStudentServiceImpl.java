package com.yr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yr.mapper.YiRongStudentModel;
import com.yr.model.Student;
import com.yr.service.YiRongStudentService;

@Service
public class YiRongStudentServiceImpl implements YiRongStudentService {

	@Autowired
	private YiRongStudentModel yiRongStudentModel;

	@Override
	@Transactional
	public Boolean inster(Student student) {
		try {
			yiRongStudentModel.inster(student);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	@Transactional
	public Boolean remove(int stuId) {
		try {
			yiRongStudentModel.remove(stuId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	@Transactional
	public Boolean modify(Student student) {
		try {
			yiRongStudentModel.modify(student);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Student EchoDisplay(int stuId) {
		return yiRongStudentModel.EchoDisplay(stuId);
	}

	@Override
	public List<Student> query(int currPage, int pageSize) {
		// 查询全部数据
		List<Student> students = yiRongStudentModel.query();
		// 从第几条数据开始
		int firstIndex = (currPage - 1) * pageSize;
		// 到第几条数据结束
		int lastIndex = currPage * pageSize;
		if(lastIndex >= 5){
			return students.subList(firstIndex, lastIndex); // 直接在list中截取
		}
		return students;
		
	}

}
