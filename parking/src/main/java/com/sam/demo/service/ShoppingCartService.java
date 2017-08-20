package com.sam.demo.service;

import java.util.List;

import com.sam.demo.model.ParkingLayoutEntity;

public interface ShoppingCartService {
	
	public List<ParkingLayoutEntity> getCategoryList();

	public Integer addProduct(ParkingLayoutEntity obj);

	}
