package com.dxc.controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dxc.beans.Marks;
import com.dxc.repository.MarksRepository;

@Controller
public class MarksController {

	@Autowired
	MarksRepository marksRepository;
	
	@RequestMapping("displaymarks")
	public ModelAndView displaystudents() {
		ModelAndView modelAndView = new ModelAndView("displaymarks");
		List<Marks> marks = (List<Marks>) marksRepository.findAll();
		modelAndView.addObject("mark", marks);
		return modelAndView;

	}

	@RequestMapping("addmarks")
	public String newmarksform() {
		return "addmarks";
	}

	@RequestMapping("savemarks")
	public String addMarks(@RequestParam("stid") int stid, @RequestParam("exid") String exid,
			@RequestParam("sub1") int sub1, @RequestParam("sub2") int sub2, @RequestParam("sub3") int sub3)
			throws ParseException {
		Marks marks = new Marks(stid, exid, sub1, sub2, sub3);
		marksRepository.save(marks);
		return "redirect:/displaymarks";
	}

	@RequestMapping("editmarks")
	public String editmarksform() {
		return "editmarks";
	}

	@RequestMapping("updatemarks")
	public String update(@RequestParam("stid") int stid, @RequestParam("exid") String exid, @RequestParam("sub1") int sub1,
			@RequestParam("sub2") int sub2, @RequestParam("sub3") int sub3) throws ParseException {
		Marks marks = new Marks(stid, exid, sub1, sub2, sub3);
		marksRepository.save(marks);
		return "redirect:/displaymarks";
	}

	@RequestMapping("marksdelete")
	public String deleteMarks(@RequestParam("stid") int stid) {
		marksRepository.deleteById(stid);
		return "redirect:/displaymarks";
	}
}
