package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


import com.cs.bru.dao.SubjectDAO;
import com.cs.bru.model.SubjectBean;
import com.cs.bru.model.SubjectSimpleBean;
import com.cs.bru.model.Subjectsach;

@RestController
public class SunjectController {
	 @Autowired
	 SubjectDAO subjectDAO;
	 
	@RequestMapping(value = "/subjectTable")
	public List<SubjectBean> getResource() {
		List<SubjectBean> list = new ArrayList<>();
		list = subjectDAO.findAll();
		return list;
	}
	@RequestMapping(value = "/subject", method = RequestMethod.POST)
	public SubjectBean  SubjectAdd(@RequestBody Subjectsach  subjectsach ) {
		SubjectBean Subject = new SubjectBean();
		Subject = subjectDAO.findOne(subjectsach.getSubjectsach());
//		System.out.println(Subject);
//		System.out.println(subjectsach.getSubjectsach());
		return Subject;
	}
	
	// insert
		/*@RequestMapping(value = { "/insertSubject" }, method = RequestMethod.POST, produces = "application/json")
		public Map<String, String> insertSubject(@RequestBody SubjectBean insertSubject) {
			try {
				subjectDAO.insertSubject(insertSubject);
			} catch (Exception e) {
				e.printStackTrace();
			}
			Map<String, String> repair = new HashMap<String, String>();
			return repair;
		}*/
	@RequestMapping(value = { "/insertSubject" }, method = RequestMethod.POST, produces = "application/json")
	public String insertSubject(@RequestBody SubjectBean insertSubject) {
		try {
			subjectDAO.insertSubject(insertSubject);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "index";
	}
}
