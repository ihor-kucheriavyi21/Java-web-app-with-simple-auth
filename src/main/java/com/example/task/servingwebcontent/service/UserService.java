package com.example.task.servingwebcontent.service;

import com.example.task.servingwebcontent.UserRepository;
import com.example.task.servingwebcontent.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getUsers() {
        return userRepository.findAll();
    }

    public boolean isUserExist(User user) {
        return getUsers().stream().anyMatch(currentUser -> currentUser.getLogin().equals(user.getLogin()) &&
                currentUser.getPassword().equals(user.getPassword()));
    }
}
