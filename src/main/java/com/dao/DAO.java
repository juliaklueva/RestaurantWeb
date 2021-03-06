package com.dao;

import javax.sql.DataSource;
import java.util.List;
import java.util.Optional;

public interface DAO <T> {

    void setDataSource(DataSource dataSource);

    Optional<T> getById(long id);

    List<T> getAll();
}
