package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.SubjectBean;

import com.cs.bru.util.ConnectDB;
@Repository
public class SubjectDAO {
	public void insertSubject(SubjectBean bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append("INSERT INTO subject (SubjectID,SubjectName,section,credit,creditHour,Tudsadee,Prtibad) VALUES(?,?,?,?,?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,bean.getSubjectID());
			prepared.setString(2, bean.getSubjectName());
			prepared.setString(3, bean.getSection());
			prepared.setString(4, bean.getCredit());
			prepared.setString(5, bean.getCreditHour());
			prepared.setInt(6, bean.getTudsadee());
			prepared.setInt(7, bean.getPrtibad());
		
		
			prepared.executeUpdate();
			/*System.out.println("sssssssss");*/
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
/*	public void deleteTeacher(String id) {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(" DELETE FROM t_teacher WHERE TeachID = ? ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1, id);
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	} */
	/*public static void main(String[] args) throws SQLException {
		Teacher bean = new Teacher();
		TeacherDAO dao = new TeacherDAO();

		bean = dao.userMyProfile("Test");
		System.out.println("Fname = " + bean.getTeacherName());
	}*/
	public List<SubjectBean>findAll(){
		List<SubjectBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		
		try {
			sql.append("SELECT SubjectID,SubjectName,section,credit,creditHour,Tudsadee,Prtibad FROM subject");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			
			while (rs.next()) {
				SubjectBean bean = new SubjectBean();
				bean.setSubjectID(rs.getString("subjectID"));
				bean.setSubjectName(rs.getString("subjectName"));
				bean.setSection(rs.getString("section"));
				bean.setCredit(rs.getString("credit"));
				bean.setCreditHour(rs.getString("creditHour"));
				bean.setTudsadee(rs.getInt("tudsadee"));
				bean.setPrtibad(rs.getInt("prtibad"));
											
				list.add(bean);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list; 
	}
public SubjectBean findOne (String id) {	
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		SubjectBean Subject = new SubjectBean();
		
		try {
			sql.append(" SELECT * FROM subject WHERE SubjectID = ?");
			prepared = con.openConnect().prepareStatement(sql.toString());			
			prepared.setString(1, id);
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				Subject.setSubjectID(rs.getString("subjectID"));
				Subject.setSubjectName(rs.getString("subjectName"));
				Subject.setSection(rs.getString("section"));
				Subject.setCredit(rs.getString("credit"));
				Subject.setCreditHour(rs.getString("creditHour"));
				Subject.setTudsadee(rs.getInt("tudsadee"));
				Subject.setPrtibad(rs.getInt("prtibad"));
//				System.out.println(Subject);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return Subject;
	}
	
}
