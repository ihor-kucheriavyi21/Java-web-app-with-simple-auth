package com.example.task.servingwebcontent.service;

import com.example.task.servingwebcontent.entity.User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {
    public List<User> getUsers() {
        User e1 = new User();
        e1.setName("Ihorko");
        ArrayList<User> users = new ArrayList<>();
        users.add(e1);
        return users;
    }

}
