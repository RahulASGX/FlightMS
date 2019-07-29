package com.model;

import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Flights {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)	
private String fid;
private String source;
private String destination;
private String workingdays;
private Time depttime;
private Time arrtime;
private int eseat;
private int bseat;
private int ecost;
private int bcost;
public String getFid() {
	return fid;
}
public void setFid(String fid) {
	this.fid = fid;
}
public String getSource() {
	return source;
}
public void setSource(String source) {
	this.source = source;
}
public String getDestination() {
	return destination;
}
public void setDestination(String destination) {
	this.destination = destination;
}
public String getWorkingdays() {
	return workingdays;
}
public void setWorkingdays(String workingdays) {
	this.workingdays = workingdays;
}
public Time getDepttime() {
	return depttime;
}
public void setDepttime(Time depttime) {
	this.depttime = depttime;
}
public Time getArrtime() {
	return arrtime;
}
public void setArrtime(Time arrtime) {
	this.arrtime = arrtime;
}
public int getEseat() {
	return eseat;
}
public void setEseat(int eseat) {
	this.eseat = eseat;
}
public int getBseat() {
	return bseat;
}
public void setBseat(int bseat) {
	this.bseat = bseat;
}
public int getEcost() {
	return ecost;
}
public void setEcost(int ecost) {
	this.ecost = ecost;
}
public int getBcost() {
	return bcost;
}
public void setBcost(int bcost) {
	this.bcost = bcost;
}
public Flights(String fid, String source, String destination, String workingdays, Time depttime, Time arrtime,
		int eseat, int bseat, int ecost, int bcost) {
	super();
	this.fid = fid;
	this.source = source;
	this.destination = destination;
	this.workingdays = workingdays;
	this.depttime = depttime;
	this.arrtime = arrtime;
	this.eseat = eseat;
	this.bseat = bseat;
	this.ecost = ecost;
	this.bcost = bcost;
}
public Flights() {
	super();
	// TODO Auto-generated constructor stub
}




}
