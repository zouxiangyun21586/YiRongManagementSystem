package com.yr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yr.model.Page;
import com.yr.model.Student;
import com.yr.service.YiRongStudentService;
import com.yr.utils.PageUtil;

@Controller
public class YiRongStudentController {

	@Autowired
	private YiRongStudentService yiRongStudentService;
	private List<Student> listStudent;

    @RequestMapping("/index")
	public String indexPage(ModelMap map) {
		return "introduce";
	}
    
    @ResponseBody
    @RequestMapping(value = "/student", method = RequestMethod.GET)
	public List<Student> query() {
		return yiRongStudentService.query();
	}
    
    @ResponseBody
    @RequestMapping(value = "/student/{id}", method = RequestMethod.DELETE)
	public String remove(@PathVariable int stuId) {
    	Boolean boo = yiRongStudentService.remove(stuId);
    	if(boo){
    		return "success";
    	} else {
    		return "error";
    	}
	}
    
    @ResponseBody
    @RequestMapping(value = "/student", method = RequestMethod.POST)
	public String inster(Student student, ModelMap mm) {
    	Boolean boo = yiRongStudentService.inster(student);
    	String mark = null;
    	if(boo){
    		listStudent = query();
    		mm.addAttribute("listStudent",listStudent);
    		mark = "{\"aaa\":\"success\"}";
    	} else {
    		mark = "{\"aaa\":\"error\"}";
    	}
    	return mark;
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
    
    @RequestMapping(value = "{id}/student", method = RequestMethod.PUT)
	public String EchoDisplay(@PathVariable int stuId) {
    	Boolean boo = yiRongStudentService.EchoDisplay(stuId);
    	if(boo){
    		return "success";
    	} else {
    		return "error";
    	}
	}
 
    @ResponseBody // 表示返回json格式的数据
	@RequestMapping("/cont")
	public String cont(@RequestParam(value = "currentPage", required = false) String scurrentPage,ModelMap mm) { // 总页数
		int everyPage = 5;//每页记录数
        int totalCount = yiRongStudentService.getCont();//获取总记录数
        //点击链接重新获取当前页
        int currentPage = 1; //当前页，默认1
        if(scurrentPage == null){
            currentPage = 1;//从第一页开始访问
        }else{
            currentPage = Integer.parseInt(scurrentPage);
        }
        //分页信息
        Page page = PageUtil.createPage(everyPage, totalCount, currentPage);
        //分页数据信息
        List<Student> list = yiRongStudentService.studentPage(page);

        mm.addAttribute("page", page);
        mm.addAttribute("list", list);
        return "studentDetails";
	}
    
}
