package com.service;

import com.dao.UserDAO;
import com.model.User;
import lombok.Data;

import java.util.Optional;

@Data
public class UserService {

    private UserDAO userDAO = UserDAO.getInstance();
    private static UserService instance;

    private UserService() {

    }

    public static UserService getInstance() {
        if (instance == null)
            instance = new UserService();

        return instance;
    }

    public boolean register(String username, String password) {
        if (userDAO.getByName(username).isPresent())
            return false;

        return userDAO.add(username, password, false);
    }

    public boolean remove(String username) {
        if (!userDAO.getByName(username).isPresent())
            return false;

        return userDAO.remove(username);
    }

    public boolean changePassword(String userName, String password) {

        Optional<User> optional = userDAO.getByName(userName);

        if (optional.isPresent()) {
            boolean isAdmin = userDAO.getByName(userName).get().isAdmin();
            userDAO.update(userName, password, isAdmin);

            return true;
        }

        return false;
    }

    public boolean changeAdminStatus(String userName, boolean isAdmin) {

        Optional<User> optional = userDAO.getByName(userName);

        if (optional.isPresent()) {
            userDAO.update(userName, null, isAdmin);

            return true;
        }

        return false;
    }

    public Optional<User> getUserByName(String username)
    {
        return userDAO.getByName(username);
    }
}
