package com.pr.example.controller;

import com.pr.example.model.User;
import com.pr.example.service.RoleService;
import com.pr.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserControl {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @RequestMapping(value = {"/listUsers"}, method = RequestMethod.GET)
    public String getUsers(Model model) {
        model.addAttribute("users", userService.findAll());
        return "user/getall";
    }

    @RequestMapping(value = {"/addEditUser"}, method = RequestMethod.GET)
    public String getProduct(@RequestParam(required = false) Long id,
                             Model model) {

        if(id!=null){
            User user =  userService.getOne(id);
            model.addAttribute("userForm",user);
            model.addAttribute("roles",user.getRoles());
        }else {
            model.addAttribute("userForm",new User());
            model.addAttribute("roles",roleService.findAll());
        }
        return "user/addedit";
    }


}
