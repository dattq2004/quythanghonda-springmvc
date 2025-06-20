package com.quythanghonda.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


@Entity
@Table(name = "role")
public class RoleEntity extends BaseEntity {
	@Column(name = "code")
	private String code;
	
	
	@ManyToMany(mappedBy = "roles")
	private List<UserEntity> users = new ArrayList<>();


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public List<UserEntity> getUsers() {
		return users;
	}


	public void setUsers(List<UserEntity> users) {
		this.users = users;
	}
	
	
	
}
