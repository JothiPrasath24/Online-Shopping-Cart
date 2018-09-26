package com.niit.mback.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.mback.dao.SupplierDao;
import com.niit.mback.model.CategoryModel;
import com.niit.mback.model.SupplierModel;

@Repository
public class SupplierImpl implements SupplierDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public void persist(SupplierModel entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.save(entity);
		s.getTransaction().commit();
		s.close();
		
	}

	public void update(SupplierModel entity) {
		// TODO Auto-generated method stub
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.update(entity);
		s.getTransaction().commit();
		s.close(); 

	}

	public SupplierModel findById(int id) {
		SupplierModel c=(SupplierModel)sessionFactory.openSession().get(SupplierModel.class, id);
		return c;
	}

	public List<SupplierModel> findAll() {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		List<SupplierModel> list=s.createQuery("from SupplierModel").list();
		s.getTransaction().commit();
		s.close();
		return list;
	}

	public void deleteAll() {
		// TODO Auto-generated method stub

	}

	public void delete(SupplierModel entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.delete(entity);
		s.getTransaction().commit();
		s.close();sessionFactory.openSession().delete(entity);


	}

	public List<SupplierModel> getallSupplier() {
		// TODO Auto-generated method stub
		
		Session sf =sessionFactory.openSession();
		sf.beginTransaction();
		Query query = sf.createQuery("from SupplierModel");
		List<SupplierModel> slist=query.list();
		System.out.println(slist);
		sf.getTransaction().commit();
		return slist;
	}

	 

}
