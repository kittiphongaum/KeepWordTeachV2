package com.cs.bru.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.cs.bru.dao.SubjectSimpleDAO;
import com.cs.bru.model.SubjectSimpleBean;
import com.cs.bru.model.Subjectsach;


@RestController
public class SubjectSimpleController {
		@Autowired
		SubjectSimpleDAO SubjectSimpleDAO;
		
		@RequestMapping(value = "/subject1")
		public List<SubjectSimpleBean> getResource() {
			List<SubjectSimpleBean> list = new ArrayList<>();
			list = SubjectSimpleDAO.findAll();
			
			return list;
		}
		@RequestMapping(value = "/subject2", method = RequestMethod.POST)
		public SubjectSimpleBean  SubjectSimpl(@RequestBody Subjectsach  SubjectSumple ) {
			SubjectSimpleBean Subject = new SubjectSimpleBean();
			Subject = SubjectSimpleDAO.SubfindOne(SubjectSumple.getSubjectsach());
			return Subject;
		}
}
