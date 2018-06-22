package com.cs.bru.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cs.bru.model.SubjectBean;


@RestController
@RequestMapping("/api/customer")
public class FooController {
   
	@RequestMapping("/")
	public String Welcome() {
		
		return "index";
	}
	@RequestMapping("/sidebar")
	public String Sidenar() {
		return"sidebar";
	}

	
	
Map<String, SubjectBean> custStores = new HashMap<String, SubjectBean>();
	
	@PostConstruct
    public void initIt() throws Exception {
     custStores.put("001", new SubjectBean());
        custStores.put("002", new SubjectBean());
        custStores.put("003", new SubjectBean());
        custStores.put("004", new SubjectBean());
        custStores.put("005", new SubjectBean());
    }
	 
	@GetMapping(value = "/all")
	public List<SubjectBean> getResource() {
		
		List<SubjectBean> custList = custStores.entrySet().stream()
		        .map(entry -> entry.getValue())
		        .collect(Collectors.toList());
		
		return custList;
	}
	
	@DeleteMapping(value = "/delete/{id}")
	public String deleteCustomer(@PathVariable String id) {
		
		custStores.remove(id);
		return "OK!";
	}
}
