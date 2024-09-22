package com.employee.service;

import java.util.List;

import com.employee.model.Employee;

public interface IEmpolyeeService {
	
	public List<Employee>getAllEmployees();
	public Employee saveEmployee(Employee emp);
	public Employee findbyId(Integer id);
	public void deleteById(Integer id);

}
