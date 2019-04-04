package com.yr.mapper;

import java.util.List;

import com.yr.model.Teacher;

/**
 * 老师操作接口
 * @author zxy-un
 * 2019年4月3日 上午12:25:12
 */
public interface YiRongTeacherModel {
	public void inster(Teacher teacher);

	public void remove(int teaId);

	public void modify(Teacher teacher);

	public Teacher EchoDisplay(int teaId);

	public List<Teacher> query();
}
