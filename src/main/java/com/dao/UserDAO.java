package com.dao;

import com.entity.User;

import java.sql.*;
import java.util.List;

public class UserDAO
{
    private Connection connection;

    public UserDAO(Connection connection)
    {
        this.connection = connection;
    }

    public boolean isUserExist(String userName)
    {
        boolean isPresent = false;
        try
        {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(
                    String.format("SELECT * FROM users WHERE BINARY user_name = '%s'", userName));

            isPresent = rs.next();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        return isPresent;
    }

    public boolean validateUser(String userName, String password)
    {
        boolean isPresent = false;
        try
        {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(
                    String.format("SELECT * FROM users WHERE BINARY user_name = '%s' " +
                            "AND BINARY password_hash = '%s'", userName, password));

            isPresent = rs.next();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        return isPresent;
    }

//    public User getUser(String userName)
//    {
//
//    }

    public boolean addUser(String userName, String password, boolean isAdmin)
    {
        if (isUserExist(userName))
            return false;

        boolean isCreated = false;
        try
        {
            int adminSetter = isAdmin ? 1 : 0;
            Statement statement = connection.createStatement();

            String query =
                    String.format("INSERT INTO users " +
                            "VALUES (NULL, '%s', '%s', %1d)", userName, password, adminSetter);
            statement.executeUpdate(query);

            isCreated = true;
        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        return isCreated;
    }

    public boolean removeUser(String userName)
    {
        if (userName.equals("Admin") || !isUserExist(userName))
            return false;

        boolean isRemoved = false;
        try
        {
            Statement statement = connection.createStatement();

            String query =
                    String.format("DELETE FROM users WHERE user_name = '%s'", userName);
            statement.executeUpdate(query);

            isRemoved = true;
        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        return isRemoved;
    }

    public boolean updateUser(String userName, String password, boolean isAdmin)
    {
        if (!isUserExist(userName))
        {
            addUser(userName, password, isAdmin);
            return true;
        }

        boolean isUpdated = false;
        try
        {
            int adminSetter = isAdmin ? 1 : 0;
            Statement statement = connection.createStatement();

            String query = String.format("UPDATE users SET is_admin = %1d, " +
                            "password_hash = '%s' WHERE user_name = '%s'",
                            adminSetter, password, userName);
            statement.executeUpdate(query);

            isUpdated = true;
        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        return isUpdated;
    }

    public List<User> getAllUsers()
    {


        return null;
    }
}
