package com.yr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yr.model.Student;
import com.yr.service.YiRongStudentService;

@Controller
public class YiRongStudentController {

	@Autowired
	private YiRongStudentService yiRongStudentService;

    @RequestMapping("/index")
	public String indexPage(ModelMap map) {
		return "exhibition";
	}
    
    @ResponseBody
    @RequestMapping(value = "/student", method = RequestMethod.GET)
	public List<Student> query(ModelMap map) {
		return yiRongStudentService.query(0, 7);
	}
    
    @ResponseBody
    @RequestMapping(value = "/student", method = RequestMethod.DELETE)
	public String remove(int stuId) {
    	Boolean boo = yiRongStudentService.remove(stuId);
    	if(boo){
    		return "success";
    	} else {
    		return "error";
    	}
	}
    
    @ResponseBody
    @RequestMapping(value = "/student", method = RequestMethod.POST)
	public String inster(Student student) {
    	Boolean boo = yiRongStudentService.inster(student);
    	if(boo){
    		return "success";
    	} else {
    		return "error";
    	}
	}
    
    @ResponseBody
    @RequestMapping(value = "/student", method = RequestMethod.PUT)
	public String modify(Student student) {
    	Boolean boo = yiRongStudentService.modify(student);
    	if(boo){
    		return "success";
    	} else {
    		return "error";
    	}
	}

}
