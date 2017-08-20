package com.sam.demo.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sam.demo.dao.ShoppingCartDao;
import com.sam.demo.model.ParkingLayoutEntity;

/**
 * 
 * @author webwerks
 *
 */
@Repository
public class ShoppingCartDaoImpl implements ShoppingCartDao {

	private static final Logger LOG = LoggerFactory.getLogger(ShoppingCartDaoImpl.class);

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ParkingLayoutEntity> getCategoryList() {
		LOG.info("Inside getCategoryList ");
		Session session = sessionFactory.getCurrentSession();		
		List<ParkingLayoutEntity> list = session.createCriteria(ParkingLayoutEntity.class).list();
		LOG.info("Category List :" + list);
		return list;
	}

	@Override
	public Integer addProduct(ParkingLayoutEntity obj) {
		LOG.info("Inside addProduct Method:");
		Session session = sessionFactory.getCurrentSession();
		Integer status = (Integer) session.save(obj);		
		LOG.info("Save Status Successfull :" + status);
		return status;
	}
}
