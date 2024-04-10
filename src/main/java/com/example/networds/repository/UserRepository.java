package com.example.networds.repository;

import com.example.networds.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByActivationCode(String code);

    User findByUsername(String username);
    
    

   
}
