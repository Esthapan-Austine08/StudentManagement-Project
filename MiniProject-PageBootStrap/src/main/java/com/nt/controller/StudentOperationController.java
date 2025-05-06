package com.nt.controller;

import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nt.entity.Student;
import com.nt.service.IStudentMgmtService;

@Controller
public class StudentOperationController {
@Autowired
	private IStudentMgmtService sService;

@GetMapping("/")
public String showHomePage() {
	return "welcome";
   }

@GetMapping("/report")
public String showReport(Map<String,Object> map,
		@PageableDefault(page = 0,size = 4,sort = "sno",direction = Sort.Direction.ASC)Pageable pageable) {
Page<Student> page = sService.showAll(pageable);
map.put("sList", page);
return "show_result";
}

@GetMapping("/add")
public String showAddFormPage(@ModelAttribute("st") Student stud) {
	return "register_form";
    }

@PostMapping("/add")
public String registerStud(@ModelAttribute("st")Student stud,RedirectAttributes attrs) {
	String msg = sService.registerStudent(stud);
	attrs.addFlashAttribute("resultMsg",msg);
	return "redirect:report";
    }

@GetMapping("/edit")
public String showEditFormPage(@RequestParam("sid") int id,@ModelAttribute("st") Student stud) {
	Student student = sService.fetchById(id);
	BeanUtils.copyProperties(student,stud);
	return "edit_form";
    }

@PostMapping("/edit")
public String modifyData(@ModelAttribute("st") Student stud,RedirectAttributes attrs) {
	//Use service
	String msg = sService.updateStud(stud);
	//add the resullt to model attribute
	attrs.addFlashAttribute("resultMsg", msg);
	//redirect the request
	return "redirect:report";
}

@GetMapping("/delete")
  public String deleteStudent(@RequestParam("sid") int id,RedirectAttributes attrs) {
 //use service
 String msg = sService.deleteStudentById(id);
 //keep the result in flash attribute
  attrs.addFlashAttribute("resulMag", msg);
 //redirect the request
	  return "forward:report";
  }
 }








