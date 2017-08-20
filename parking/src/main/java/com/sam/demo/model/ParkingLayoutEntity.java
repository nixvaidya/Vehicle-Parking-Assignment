package com.sam.demo.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "parking_layout")
public class ParkingLayoutEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "no_of_slots")
	private String noOfSlots;
	
	@Column(name = "twowheeler_slots")
	private String twowheelerSlots;
	
	@Column(name = "fourwheeler_slot")
	private String fourwheelerSlot;
	
	@Column(name = "open_time")
	private String openTime;
	
	@Column(name = "close_time")
	private String closeTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNoOfSlots() {
		return noOfSlots;
	}

	public void setNoOfSlots(String noOfSlots) {
		this.noOfSlots = noOfSlots;
	}

	public String getTwowheelerSlots() {
		return twowheelerSlots;
	}

	public void setTwowheelerSlots(String twowheelerSlots) {
		this.twowheelerSlots = twowheelerSlots;
	}

	public String getFourwheelerSlot() {
		return fourwheelerSlot;
	}

	public void setFourwheelerSlot(String fourwheelerSlot) {
		this.fourwheelerSlot = fourwheelerSlot;
	}

	public String getOpenTime() {
		return openTime;
	}

	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}

	public String getCloseTime() {
		return closeTime;
	}

	public void setCloseTime(String closeTime) {
		this.closeTime = closeTime;
	}
	

}
