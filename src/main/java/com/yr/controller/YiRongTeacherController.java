package com.yr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yr.model.Teacher;
import com.yr.service.YiRongTeacherService;

@Controller
public class YiRongTeacherController {

	@Autowired
	private YiRongTeacherService yiRongTeacherService;

    @RequestMapping("/indexTeacher")
	public String indexPage(ModelMap map) {
		return "exhibition";
	}
    
    @ResponseBody
    @RequestMapping(value = "/teacher", method = RequestMethod.GET)
	public List<Teacher> query(ModelMap map) {
		return yiRongTeacherService.query(0, 7);
	}
    
    @ResponseBody
    @RequestMapping(value = "/teacher", method = RequestMethod.DELETE)
	public String remove(int teaId) {
    	Boolean boo = yiRongTeacherService.remove(teaId);
    	if(boo){
    		return "success";
    	} else {
    		return "error";
    	}
	}
    
    @ResponseBody
    @RequestMapping(value = "/teacher", method = RequestMethod.POST)
	public String inster(Teacher teacher) {
    	Boolean boo = yiRongTeacherService.inster(teacher);
    	if(boo){
    		return "success";
    	} else {
    		return "error";
    	}
	}
    
    @ResponseBody
    @RequestMapping(value = "/teacher", method = RequestMethod.PUT)
	public String modify(Teacher teacher) {
    	Boolean boo = yiRongTeacherService.modify(teacher);
    	if(boo){
    		return "success";
    	} else {
    		return "error";
    	}
	}

}
