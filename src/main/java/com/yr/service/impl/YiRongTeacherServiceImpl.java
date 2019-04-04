package com.yr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yr.mapper.YiRongTeacherModel;
import com.yr.model.Teacher;
import com.yr.service.YiRongTeacherService;

@Service
public class YiRongTeacherServiceImpl implements YiRongTeacherService {

	@Autowired
	private YiRongTeacherModel yiRongTeacherModel;

	@Override
	@Transactional
	public Boolean inster(Teacher teacher) {
		try {
			yiRongTeacherModel.inster(teacher);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	@Transactional
	public Boolean remove(int teaId) {
		try {
			yiRongTeacherModel.remove(teaId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	@Transactional
	public Boolean modify(Teacher teacher) {
		try {
			yiRongTeacherModel.modify(teacher);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Teacher EchoDisplay(int teaId) {
		return yiRongTeacherModel.EchoDisplay(teaId);
	}

	@Override
	public List<Teacher> query(int currPage, int pageSize) {
		// 查询全部数据
		List<Teacher> teachers = yiRongTeacherModel.query();
		// 从第几条数据开始
		int firstIndex = (currPage - 1) * pageSize;
		// 到第几条数据结束
		int lastIndex = currPage * pageSize;
		if(teachers.size() >= 5){
			return teachers.subList(firstIndex, lastIndex); // 直接在list中截取
		}
		return teachers;
	}

}
