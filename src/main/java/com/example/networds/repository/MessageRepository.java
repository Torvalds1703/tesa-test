package com.example.networds.repository;

import com.example.networds.entity.Task;
import com.example.networds.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;


public interface MessageRepository extends CrudRepository<Task, Long> {
    Page<Task> findAll(Pageable pageable);

    Page<Task> findByTag(String tag, Pageable pageable);

    Page<Task> findAllByAuthor(User user, Pageable pageable);
}

