package com.service;

import com.dao.UserDAO;
import lombok.Data;

import javax.sql.DataSource;

@Data
public class AuthorisationService {

    private DataSource dataSource;
    private UserDAO userDAO;
    private static AuthorisationService instance;

    private AuthorisationService() {
    }

    public static AuthorisationService getInstance() {

        if (instance == null)
            instance = new AuthorisationService();

        return instance;
    }

    public boolean singIn(String userName, String password) {

        if (userDAO.validate(userName, password))
            return true;

        return false;
    }
}
