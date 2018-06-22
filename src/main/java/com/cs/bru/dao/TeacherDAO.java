package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.TeacherBean;
import com.cs.bru.util.ConnectDB;
@Repository
public class TeacherDAO {
	/*public TeacherBean MyTeacherByID(String TeachID) throws SQLException {
		TeacherBean bean = new TeacherBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement preperd = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append(" SELECT * FROM t_teacher WHERE IdTeacher = ? ");
			preperd = con.openConnect().prepareStatement(sql.toString());
			preperd.setString(1,TeachID);
			ResultSet rs =preperd.executeQuery();
			
			while(rs.next()) {
				
				bean.setTeachID(rs.getString("TeachID"));
				bean.setTeacherName(rs.getString("TeacherName"));
				bean.setTeacherFname(rs.getString("TeacherFname"));
			
				
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			if(con !=null) {
				con.openConnect().close();
			}
		}
		return bean;
	}*/
	public void insertTeacther(TeacherBean bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append("INSERT INTO teacher (TeacherUser,TeacherPass, TeacherName,TeachLastName,BaseClass,BaseHour,Position,PositionTeach) VALUES(?,?,?,?,?,?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,bean.getTeacherUser());
			prepared.setString(2, bean.getTeacherPass());
			prepared.setString(3, bean.getTacherName());
			prepared.setString(4, bean.getTeachLastName());
			prepared.setString(5, bean.getBaseClass());
			prepared.setString(6, bean.getBaseHour());
			prepared.setString(7, bean.getPosition());
			prepared.setString(8, bean.getPositionTeach());
		
			prepared.executeUpdate();
			System.out.println("sssssssss");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public void deleteTeacher(String id) {
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
	} // 
	/*public static void main(String[] args) throws SQLException {
		Teacher bean = new Teacher();
		TeacherDAO dao = new TeacherDAO();

		bean = dao.userMyProfile("Test");
		System.out.println("Fname = " + bean.getTeacherName());
	}*/
	public List<TeacherBean>findAll(){
		List<TeacherBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		
		try {
			sql.append("SELECT TeacherUser,TeacherName,TeachLastName,BaseClass,BaseHour,Position,PositionTeach FROM teacher");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			
			while (rs.next()) {
				TeacherBean bean = new TeacherBean();
				bean.setTeacherUser(rs.getString("teacherUser"));
				bean.setTacherName(rs.getString("tacherName"));
				bean.setTeachLastName(rs.getString("teachLastName"));
				bean.setBaseClass(rs.getString("baseClass"));
				bean.setBaseHour(rs.getString("baseHour"));
				bean.setPosition(rs.getString("position"));
				bean.setPositionTeach(rs.getString("positionTeach"));
				
				
				list.add(bean);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list; 
	}
	
}
