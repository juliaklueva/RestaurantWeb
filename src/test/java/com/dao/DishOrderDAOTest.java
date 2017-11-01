package com.dao;

import com.model.DishOrder;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;

import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

public class DishOrderDAOTest {

    DishOrderDAO dishOrderDAO = DishOrderDAO.getInstance();

    @Before
    public void init() throws Exception {

        dishOrderDAO.setDataSource(getDataSource());
    }

    public DataSource getDataSource() {

        EmbeddedDatabaseBuilder builder = new EmbeddedDatabaseBuilder();

        return builder
                .setType(EmbeddedDatabaseType.H2)
                .addScript("init_dish_order.sql")
                .addScript("data_dish_order.sql")
                .build();
    }

    @Test
    public void remove() throws Exception {

        assertEquals(true, dishOrderDAO.getById(2).isPresent());
//        List<DishOrder> temp = dishOrderDAO.getAll();
//        temp.forEach(System.out::println);
        dishOrderDAO.remove(2);
//        temp = dishOrderDAO.getAll();
//        temp.forEach(System.out::println);
        assertEquals(false, dishOrderDAO.getById(2).isPresent());
    }

    @Test
    public void getAll() throws Exception {

        List<DishOrder> act = dishOrderDAO.getAll();

        List<DishOrder> exp = new ArrayList<>();
        exp.add(new DishOrder(1, 1, 2, 2, 340));
        exp.add(new DishOrder(2, 1, 6, 1, 135));
        exp.add(new DishOrder(3, 2, 4, 1, 180));
        exp.add(new DishOrder(4, 2, 9, 2, 110));
        exp.add(new DishOrder(5, 3, 8, 3, 330));

        assertThat(act, is(exp));
    }

    @Test
    public void getByOrderId() throws Exception {

        DishOrder act = dishOrderDAO.getByOrderId(1).get();
        DishOrder exp = new DishOrder(1, 1, 2, 2, 340);

        assertThat(act, is(exp));
    }

    @Test
    public void getById() throws Exception {

        DishOrder act = dishOrderDAO.getById(2).get();
        DishOrder exp = new DishOrder(2, 1, 6, 1, 135);

        assertThat(act, is(exp));
    }
}
