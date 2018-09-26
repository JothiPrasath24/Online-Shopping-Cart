package com.niit.mback.model;
import java.io.Serializable;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Supplier")

public class SupplierModel implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	private int id;
	private String name;
	private Set<MobileModel> set_of_mobile;
	
	public SupplierModel()
	{
		super();
	}
	
	public SupplierModel(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	@Id
	@GeneratedValue
	@Column(name="supplier_id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="supplier_name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@OneToMany(targetEntity=MobileModel.class, mappedBy="supplier", cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@Column(name="supplier_set_of_products")
	public Set<MobileModel> getSet_of_mobile() {
		return set_of_mobile;
	}
	public void setSet_of_mobile(Set<MobileModel> set_of_mobile) {
		this.set_of_mobile = set_of_mobile;
	}
	
 

}
