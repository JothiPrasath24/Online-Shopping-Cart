package com.niit.mback.impl;

import java.util.List;
import java.util.List;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.mback.dao.MobileDao;
import com.niit.mback.model.MobileModel;

import org.springframework.stereotype.Repository;
 

@Repository
public class MobileImpl implements MobileDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public void persist(MobileModel entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.save(entity);
		s.getTransaction().commit();
		s.close();
		
	}

	public void update(MobileModel entity) {
		// TODO Auto-generated method stub
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.update(entity);
		s.getTransaction().commit();
		s.close(); 
		
	}

	public MobileModel findById(int id) {

		MobileModel c=(MobileModel)sessionFactory.openSession().get(MobileModel.class, id);
		return c;
		 
	}

	public List<MobileModel> findAll() {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		List<MobileModel> list=s.createQuery("from MobileModel").list();
		s.getTransaction().commit();
		s.close();
		return list;
	}

	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	public void delete(MobileModel entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.delete(entity);
		s.getTransaction().commit();
		s.close();sessionFactory.openSession().delete(entity);
	}


//@Override

	public List<MobileModel> getAll() {

		Session sf =sessionFactory.openSession();
		sf.beginTransaction();
		Query query = sf.createQuery("from MobileModel");
		List<MobileModel> list=query.list();
		System.out.println(list);
		sf.getTransaction().commit();
		return list;
		 
	}

	public List<MobileModel> getAllMobileDetails() {
		
		   Session session=sessionFactory.openSession();
	        session.beginTransaction();
	        
	    List<MobileModel> product=sessionFactory.openSession().createCriteria(MobileModel.class).list();
	      
	        
	        session.getTransaction().commit();
	        
	        return product;
	
	}

	public List<MobileModel> getFilterMobile(int cid) {
         Session s=sessionFactory.openSession();
		
		List<MobileModel> results =s.createQuery("from MobileModel where CATEGORY_ID="+cid).list();
		s.close();
		
		return results;
	}

 

	 }
