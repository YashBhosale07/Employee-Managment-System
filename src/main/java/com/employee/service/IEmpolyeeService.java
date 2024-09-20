package com.employee.service;

import java.util.List;

import com.employee.model.Employee;

public interface IEmpolyeeService {
	
	public List<Employee>getAllEmployees();
	public Employee saveEmployee(Employee emp);

}
