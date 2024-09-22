package com.employee.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.dao.IEmployeeDAO;
import com.employee.model.Employee;

@Service
public class EmployeeService implements IEmpolyeeService {
	
	@Autowired
	private IEmployeeDAO dao;

	@Override
	public List<Employee> getAllEmployees() {
		List<Employee>employees=dao.findAll();
		return employees;
	}

	@Override
	public Employee saveEmployee(Employee emp) {
		return dao.save(emp);
	}

	@Override
	public Employee findbyId(Integer id) {
		Optional<Employee>optional=dao.findById(id);
		return optional.get();
	}

	@Override
	public void deleteById(Integer id) {
		dao.deleteById(id);
		
	}

}
