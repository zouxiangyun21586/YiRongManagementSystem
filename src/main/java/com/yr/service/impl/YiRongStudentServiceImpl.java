package com.yr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yr.mapper.YiRongStudentModel;
import com.yr.model.Page;
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
	public Boolean EchoDisplay(int stuId) {
		try {
			yiRongStudentModel.EchoDisplay(stuId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Student> query() {
		return yiRongStudentModel.query();
		
	}

	@Override
	public int getCont() {
		int i = yiRongStudentModel.getCont();
		return i;
	}

	@Override
	public List<Student> studentPage(Page page) {
		return yiRongStudentModel.studentPage(page);
	}

}