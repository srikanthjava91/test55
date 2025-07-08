package com.jdbcapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeDAO dao;// will inject dao from XML file

	@GetMapping("/empform")
	public String showform(Model m) {
		m.addAttribute("employee", new Employee());
		return "empform";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("emp") Employee emp) {
		dao.save(emp);
		return "redirect:/viewemp";
	}

	@RequestMapping("/viewemp")
	public String viewemp(Model m) {
		List<Employee> list = dao.getEmployees();
		m.addAttribute("list", list);
		return "View";
	}

	@RequestMapping(value = "/editemp/{empid}")
	public String edit(@PathVariable("empid") int empid, Model m) {
		Employee emp = dao.getEmpById(empid);
		m.addAttribute("employee", emp);
		return "empeditform";
	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("emp") Employee emp) {
		dao.update(emp);
		return "redirect:/viewemp";
	}

	@RequestMapping(value = "/deleteemp/{empid}", method = RequestMethod.GET)
	public String delete(@PathVariable("empid") int empid) {
		dao.delete(empid);
		return "redirect:/viewemp";
	}

}
