package com.example.session03_java.bai9;

import java.util.ArrayList;
import java.util.List;

public class UserManager {
    private List<User> userList = new ArrayList<>();
    private int nextId = 1;

    public void addUser(User user) {
        userList.add(user);
    }

    public List<User> getUsers() {
        return userList;
    }

    public void removeUser(int id) {
        userList.removeIf(user -> user.getId() == id);
    }

    public int getNextId() {
        return nextId++;
    }
}
