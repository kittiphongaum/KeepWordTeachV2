package com.cs.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cs.bru.model.KeepteachBean;

import com.cs.bru.util.ConnectDB;
@Repository
public class KeepteachDAO {
	public void insertKeepteach(KeepteachBean bean) throws Exception {
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		try {
			sql.append("INSERT INTO keepteach (TeachID,StudentNum,TeachDate,TwachWeek,TeachTudsadee,TeachPrtibad) VALUES(?,?,?,?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setString(1,bean.getTeachID());
			prepared.setString(2, bean.getStudentNum());
			prepared.setString(3, bean.getTeachDate());
			prepared.setString(4, bean.getTwachWeek());
			prepared.setInt(5, bean.getTeachTudsadee());
			prepared.setInt(6, bean.getTeachPrtibad());
		
		
			prepared.executeUpdate();
			System.out.println("sssssssss");
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
	public List<KeepteachBean>findAll(){
		List<KeepteachBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		
		try {
			sql.append("SELECT TeachID,StudentNum,TeachDate,TwachWeek,TeachTudsadee,TeachPrtibad FROM keepteach");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			
			while (rs.next()) {
				KeepteachBean bean = new KeepteachBean();
				bean.setTeachID(rs.getString("teachID"));
				bean.setStudentNum(rs.getString("studentNum"));
				bean.setTeachDate(rs.getString("teachDate"));
				bean.setTwachWeek(rs.getString("twachWeek"));
				bean.setTeachTudsadee(rs.getInt("tachTudsadee"));
				bean.setTeachPrtibad(rs.getInt("teachPrtibad"));
											
				list.add(bean);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list; 
	}
}
