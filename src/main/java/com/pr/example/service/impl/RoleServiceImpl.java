package com.pr.example.service.impl;

import com.pr.example.dao.RoleDao;
import com.pr.example.model.Role;
import com.pr.example.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDao roleDao;

    @Override
    public List<Role> findAll() {
        return roleDao.findAll();
    }

    @Override
    public Role getOne(Long id) {
        return roleDao.findOne(id);
    }

    @Override
    public void save(Role role) {
        roleDao.save(role);
    }

    @Override
    public void remove(Long id) {
        roleDao.delete(id);
    }
}
