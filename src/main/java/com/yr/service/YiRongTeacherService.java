package com.yr.service;

import java.util.List;

import com.yr.model.Teacher;

/**
 * 老师功能接口
 * @author zxy-un
 * 2019年4月3日 上午12:09:01
 */
public interface YiRongTeacherService {
	public Boolean inster(Teacher teacher);

	public Boolean remove(int teaId);

	public Boolean modify(Teacher teacher);

	public Teacher EchoDisplay(int teaId);

	public List<Teacher> query(int currPage, int pageSize);
}
