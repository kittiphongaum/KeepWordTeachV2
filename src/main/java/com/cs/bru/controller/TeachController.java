package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.dao.KeepteachDAO;
import com.cs.bru.model.KeepteachBean;
@RestController

public class TeachController {
	@Autowired
	KeepteachDAO  keepteachDAO;
	
	Map<String, KeepteachBean> custStores = new HashMap<String, KeepteachBean>();
	@GetMapping(value = "/Table")
	public List<KeepteachBean> getResource() {
		
		List<KeepteachBean> custList = new ArrayList<>();
		        custList= keepteachDAO.findAll();
		
		return custList;
	}
	
	
	
	@DeleteMapping(value = "/delete/{id}")
	public String deleteCustomer(@PathVariable String id) {
		
		custStores.remove(id);
		return "OK!";
	}
}
