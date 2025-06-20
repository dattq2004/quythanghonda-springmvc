package com.quythanghonda.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.quythanghonda.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
	UserEntity findOneByUsername(String username);
}
