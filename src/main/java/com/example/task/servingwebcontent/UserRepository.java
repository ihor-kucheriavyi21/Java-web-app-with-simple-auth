package com.example.task.servingwebcontent;

import com.example.task.servingwebcontent.entity.User;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Component
public class UserRepository {

    private final List<User> users = new ArrayList<>(Arrays.asList(new User("Ihor", "login", "1234"),
            new User("Ihor2", "login2", "1234"),
            new User("Ihor3", "login3", "1234")));

    public List<User> findAll() {
        return users;
    }
}
