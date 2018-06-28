package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.KeepteachDAO;
import com.cs.bru.model.KeepteachBean;


@RestController
public class TestCon {
	@Autowired
	KeepteachDAO KeepteachDAO;
	
	@RequestMapping(value = "/Test")
	public List<KeepteachBean> getResource() {
		List<KeepteachBean> list = new ArrayList<>();
		list = KeepteachDAO.findAll();
		
		return list;
	}
	@PutMapping(value = "/update1/{id}")
	public KeepteachBean postCustomer(@PathVariable long id, @RequestBody KeepteachBean customer) {
		
		return customer;
	}
	
}
