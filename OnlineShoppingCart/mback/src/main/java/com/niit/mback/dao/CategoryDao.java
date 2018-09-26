package com.niit.mback.dao;


import java.util.List;

import com.niit.mback.model.*;


public interface CategoryDao {
	
	public void persist(CategoryModel entity);

	 public void update(CategoryModel entity);
	 
	 public  CategoryModel findById(int id);

	 public List<CategoryModel> findAll();

	 public void deleteAll();
	 
     public void delete(CategoryModel entity);
     
	 public List<CategoryModel> getallCategories();

}
