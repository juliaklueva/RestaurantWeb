package com.dao;

import com.model.User;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;

import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

public class UserDAOTest {

    private UserDAO userDAO = UserDAO.getInstance();

    @Before
    public void init() throws Exception {

        userDAO.setDataSource(getDataSource());
        userDAO.setTestMode(true);
    }

    @Test
    public void validateUser() throws Exception {

        boolean act1 = userDAO.validate("Admin", "admin");
        boolean act2 = userDAO.validate("Admin", "aDmin");

        assertThat(act1, is(true));
        assertThat(act2, is(false));
    }

    @Test
    public void getUser() throws Exception {

        User act1 = userDAO.getByName("Admin").get();
        User exp1 = new User(3, "Admin", true);

        assertThat(act1, is(exp1));
    }

    @Test
    public void getById() throws Exception {

        User act1 = userDAO.getById(3).get();
        User exp1 = new User(3, "Admin", true);

        assertThat(act1, is(exp1));
    }

    @Test
    public void addUser() {

        boolean act = userDAO.add("Temp", "temp", true);

        assertThat(act, is(true));
    }

    @Test
    public void removeUser() {

        assertThat(userDAO.getByName("Ivanov").isPresent(), is(true));
        userDAO.remove("Ivanov");
        assertThat(userDAO.getByName("Ivanov").isPresent(), is(false));
    }

    @Test
    public void updateUser() {

        boolean act1 = userDAO.getByName("Admin").get().isAdmin();
        assertThat(act1, is(true));

        userDAO.update("Admin", "aaaaa", false);
        boolean act2 = userDAO.getByName("Admin").get().isAdmin();
        assertThat(act2, is(false));
    }

    @Test
    public void getAllUsers() throws Exception {

        List<User> act = userDAO.getAll();

        List<User> exp = new ArrayList<>();
        exp.add(new User(1, "Petrov", false));
        exp.add(new User(2, "Ivanov", false));
        exp.add(new User(3, "Admin", true));
        exp.add(new User(4, "Rustam", false));
        exp.add(new User(5, "Sergei", false));
        exp.add(new User(6, "Yulia", false));

        assertThat(act, is(exp));
    }

    private DataSource getDataSource() {

        EmbeddedDatabaseBuilder builder = new EmbeddedDatabaseBuilder();

        return builder
                .setType(EmbeddedDatabaseType.H2)
                .addScript("init_users.sql")
                .addScript("data_users.sql")
                .build();
    }
}
