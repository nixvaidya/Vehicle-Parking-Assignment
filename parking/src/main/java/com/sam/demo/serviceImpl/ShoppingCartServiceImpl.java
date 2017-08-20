package com.sam.demo.serviceImpl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sam.demo.dao.ShoppingCartDao;
import com.sam.demo.model.ParkingLayoutEntity;
import com.sam.demo.service.ShoppingCartService;

/**
 * 
 * @author webwerks
 *
 */
@Transactional
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService{
 
	private static final Logger LOG = LoggerFactory.getLogger(ShoppingCartServiceImpl.class);
	
	@Autowired
	private ShoppingCartDao shoppingCartDao;
	

	@Override
	public List<ParkingLayoutEntity> getCategoryList() {
		LOG.info("Inside GetCategoryList Method:");
		return shoppingCartDao.getCategoryList();
	}

	@Override
	public Integer addProduct(ParkingLayoutEntity obj) {
		LOG.info("Inside addProduct Method:");
		return shoppingCartDao.addProduct(obj);
	}
}
