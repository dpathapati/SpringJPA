package com.dxc.controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dxc.beans.Student;
import com.dxc.repository.StudentRepository;

@Controller
public class StudentController {

	@Autowired
	StudentRepository studentRepository;

	@RequestMapping("modules")
	public String Module() {
		return "modules";
	}
	@RequestMapping("displaystudent")
	public ModelAndView displaystudents() {
		ModelAndView modelAndView = new ModelAndView("displaystudent");
		List<Student> students = (List<Student>) studentRepository.findAll();
		modelAndView.addObject("stud", students);
		return modelAndView;

	}

	@RequestMapping("addstudent")
	public String newstudentform() {
		return "addstudent";
	}

	@RequestMapping("save")
	public String addStudent(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("dob") String dob, @RequestParam("email") String email, @RequestParam("mobile") String mobile)
			throws ParseException {
		Student student = new Student(id, name, dob, email, mobile);
		studentRepository.save(student);
		return "redirect:/displaystudent";
	}

	@RequestMapping("editstudent")
	public String editstudentform() {
		return "editstudent";
	}

	@RequestMapping("update")
	public String update(@RequestParam("id") int id, @RequestParam("name") String name, @RequestParam("dob") String dob,
			@RequestParam("email") String email, @RequestParam("mobile") String mobile) throws ParseException {
		Student student = new Student(id, name, dob, email, mobile);
		studentRepository.save(student);
		return "redirect:/displaystudent";
	}

	@RequestMapping("studentdelete")
	public String deleteStudent(@RequestParam("id") int id) {
		studentRepository.deleteById(id);
		return "redirect:/displaystudent";
	}
}
