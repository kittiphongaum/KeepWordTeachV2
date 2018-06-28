package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;


import com.cs.bru.model.SubjectSimpleBean;
import com.cs.bru.util.ConnectDB;

@Repository
public class SubjectSimpleDAO {
	public void insertSubjectSimple(SubjectSimpleBean bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append("INSERT INTO subjectsimple (SubjectsimID,SubjectsimName,SectionSim,CreditSim,CreditHuorSim,TudsadeeSim,PrtibadSim) VALUES(?,?,?,?,?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,bean.getSubjectsimID());
			prepared.setString(2, bean.getSubjectsimName());
			prepared.setString(3, bean.getSectionSim());
			prepared.setString(4, bean.getCreditSim());
			prepared.setString(5, bean.getCreditHuorSim());
			prepared.setInt(6, bean.getTudsadeeSim());
			prepared.setInt(7, bean.getPrtibadSim());
		
		
			prepared.executeUpdate();
			/*System.out.println("sssssssss");*/
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public List<SubjectSimpleBean>findAll(){
		List<SubjectSimpleBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		
		try {
			sql.append("SELECT SubjectsimID,SubjectsimName,SectionSim,CreditSim,CreditHuorSim,TudsadeeSim,PrtibadSim FROM subjectsimple");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			
			while (rs.next()) {
				SubjectSimpleBean bean = new SubjectSimpleBean();
				bean.setSubjectsimID(rs.getString("subjectsimID"));
				bean.setSubjectsimName(rs.getString("subjectsimName"));
				bean.setSectionSim(rs.getString("sectionSim"));
				bean.setCreditSim(rs.getString("creditSim"));
				bean.setCreditHuorSim(rs.getString("creditHuorSim"));
				bean.setTudsadeeSim(rs.getInt("tudsadeeSim"));
				bean.setPrtibadSim(rs.getInt("prtibadSim"));
											
				list.add(bean);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list; 
	}
public SubjectSimpleBean SubfindOne (String id) {	
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		SubjectSimpleBean Subject = new SubjectSimpleBean();
		
		try {
			sql.append(" SELECT * FROM subjectsimple WHERE SubjectsimID = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());			
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				Subject.setSubjectsimID(rs.getString("subjectsimID"));
				Subject.setSubjectsimName(rs.getString("subjectsimName"));
				Subject.setSectionSim(rs.getString("sectionSim"));
				Subject.setCreditSim(rs.getString("creditSim"));
				Subject.setCreditHuorSim(rs.getString("creditHuorSim"));
				Subject.setTudsadeeSim(rs.getInt("tudsadeeSim"));
				Subject.setPrtibadSim(rs.getInt("prtibadSim"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return Subject;
	}
}
