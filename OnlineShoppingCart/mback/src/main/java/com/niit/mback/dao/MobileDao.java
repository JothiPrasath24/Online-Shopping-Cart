package com.niit.mback.dao;

import java.util.List;

import com.niit.mback.model.*;

public interface MobileDao {

	public void persist(MobileModel entity);

	 public void update(MobileModel entity);
	 
	 public  MobileModel findById(int id);

	 public List<MobileModel> findAll();

	 public void deleteAll();
	 
     public void delete(MobileModel entity);
     
     public List<MobileModel> getAll();
     
    List<MobileModel> getAllMobileDetails();
     public List<MobileModel> getFilterMobile(int cid);
     
    
      
     

}
