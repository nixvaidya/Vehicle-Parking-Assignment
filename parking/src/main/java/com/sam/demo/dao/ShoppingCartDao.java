package com.sam.demo.dao;

import java.util.List;

import com.sam.demo.model.ParkingLayoutEntity;

/**
 * 
 * @author webwerks
 *
 */
public interface ShoppingCartDao {
	

	public List<ParkingLayoutEntity> getCategoryList();

	public Integer addProduct(ParkingLayoutEntity obj);

	}
