package com.employee.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.employee.model.Employee;

public interface IEmployeeDAO extends CrudRepository<Employee, Integer> {

	public List<Employee>findAll();
}
