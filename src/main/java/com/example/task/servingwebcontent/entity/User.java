package com.example.task.servingwebcontent.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class User {
    private String name;
    private String login;
    private String password;
}
