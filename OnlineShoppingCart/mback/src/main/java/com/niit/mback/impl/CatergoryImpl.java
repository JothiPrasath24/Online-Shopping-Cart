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

import com.niit.mback.dao.CategoryDao;
import com.niit.mback.model.CategoryModel;

import org.springframework.stereotype.Repository;
 

@Repository
public class CatergoryImpl implements CategoryDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public void persist(CategoryModel entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.save(entity);
		s.getTransaction().commit();
		s.close();
		
	}

	public void update(CategoryModel entity) {
				
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.update(entity);
		s.getTransaction().commit();
		s.close(); 
	}

	public CategoryModel findById(int id) {

		CategoryModel c=(CategoryModel)sessionFactory.openSession().get(CategoryModel.class, id);
		return c;
		 
	}

	public List<CategoryModel> findAll() {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		List<CategoryModel> list=s.createQuery("from CategoryModel").list();
		s.getTransaction().commit();
		s.close();
		return list;
	}

	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	public void delete(CategoryModel entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.delete(entity);
		s.getTransaction().commit();
		s.close();sessionFactory.openSession().delete(entity);

		
	}

	public List<CategoryModel> getallCategories() {
		// TODO Auto-generated method stub
		
		Session sf =sessionFactory.openSession();
		sf.beginTransaction();
		Query query = sf.createQuery("from CategoryModel");
		List<CategoryModel> list=query.list();
		System.out.println(list);
		sf.getTransaction().commit();
		return list;
		 
	}

 

	 }
