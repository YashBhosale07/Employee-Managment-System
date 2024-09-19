package com.employee.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.employee.model.Employee;
import com.employee.service.IEmpolyeeService;


@Controller
public class HomeController {

	@Autowired
	private IEmpolyeeService service;
	
	@GetMapping("/home")
	public String wishPages() {
		return "home";
	}
	
	@GetMapping("/getAllEmpolyees")
	public String getAllEmpolyees(Map<String,Object>model) {
		System.out.println("Getting all Empolyee list");
		List<Employee>empolyees=service.getAllEmployees();
		model.put("employees",empolyees);
		return "list-customers";
	}
}
