package com.employee.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.employee.model.Employee;
import com.employee.service.IEmpolyeeService;


@Controller
@RequestMapping(value = "/employee")
public class HomeController {

	@Autowired
	private IEmpolyeeService service;
	
	@GetMapping("/home")
	public String wishPages() {
		return "home";
	}
	
	@GetMapping("/EmployeeDetails")
	public String details(@ModelAttribute("emp")Employee employee) {
		return "EmployeeDetails";
	}
	
	@PostMapping("/EmployeeDetails")
	public String Savedetails(@ModelAttribute("emp")Employee employee,Map<String,Object>model) {
		model.put("emp",employee);
		System.out.println(employee.getId());
		System.out.println(employee);
		if(employee.getId()!=null) {
			service.saveEmployee(employee);
		}else {
			service.saveEmployee(employee);
		}
		
		System.out.println(employee);
		return "redirect:/employee/getAllEmployees";

	}
	
	@GetMapping("/getAllEmployees")
	public String getAllEmpolyees(Map<String,Object>model) {
		System.out.println("Getting all Empolyee list");
		List<Employee>empolyees=service.getAllEmployees();
		model.put("employees",empolyees);
		return "list-customers";
	}
	
	@GetMapping("/updateEmployee")
	public String updateData(@RequestParam("id")Integer id,Map<String,Object>model) {
		Employee e=service.findbyId(id);
		model.put("employee",e );
		return "UpdateForm";
	}
	
	@GetMapping("/deleteEmployee")
	public String deleteData(@RequestParam("id")Integer id) {
		service.deleteById(id);
		return "redirect:/employee/getAllEmployees";
	}
}
