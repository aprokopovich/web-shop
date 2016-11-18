package com.pr.example.service;


import com.pr.example.model.Role;

import java.util.List;

public interface RoleService {

    List<Role> findAll();

    Role getOne(Long id);

    void save (Role role);

    void remove (Long id);
}
