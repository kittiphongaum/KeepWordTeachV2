package com.cs.bru.model;

public class SubjectBean {
	private int SubID;
	private String subjectID;
	private String subjectName;
	private String section;
	private String credit;
	private String creditHour;
	private int tudsadee;
	private int prtibad;
	
	
	public SubjectBean() {
		super();
	}
	public SubjectBean(String subjectID,String subjectName,String section,String credit,String creditHour,String student,int tudsadee,int prtibad) {
		super();
		this.subjectID=subjectID;
		this.subjectName=subjectName;
		this.section=section;
		this.credit=credit;
		this.creditHour=creditHour;
		this.tudsadee=tudsadee;
		this.prtibad=prtibad;
		
	}
	public int getSubID() {
		return SubID;
	}
	public void setSubID(int subID) {
		SubID = subID;
	}
	public String getSubjectID() {
		return subjectID;
	}
	public void setSubjectID(String subjectID) {
		this.subjectID = subjectID;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	public String getCreditHour() {
		return creditHour;
	}
	public void setCreditHour(String creditHour) {
		this.creditHour = creditHour;
	}
	public int getTudsadee() {
		return tudsadee;
	}
	public void setTudsadee(int tudsadee) {
		this.tudsadee = tudsadee;
	}
	public int getPrtibad() {
		return prtibad;
	}
	public void setPrtibad(int prtibad) {
		this.prtibad = prtibad;
	}

	
}
