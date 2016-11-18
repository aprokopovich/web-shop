package com.pr.example.service;


import com.pr.example.model.User;

import java.util.List;

public interface UserService {

    void save(User user);

    User findByUsername(String userName);

    List<User> findAll();

    User getOne(Long id);

    void remove(Long id);

}
