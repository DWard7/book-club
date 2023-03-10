package com.dustin.bookclub.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.dustin.bookclub.models.User;

public interface UserRepository extends CrudRepository<User, Long> {
  Optional<User> findByEmail(String email);
}
