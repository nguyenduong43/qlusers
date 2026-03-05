package org.example.qluser.dao;

import org.example.qluser.model.User;

import java.sql.SQLException;
import java.util.*;
public interface IUserDAO {
    public void insertUser(User user) throws SQLException;
    public User selectUser(int id);
    public List<User> selectAllUsers();
    public boolean deleteUser(int id) throws SQLException;
    public boolean updateUser(User user) throws SQLException;
    public List<User> searchUser(String country) throws SQLException;
    public List<User> sortUser() throws SQLException;
    public User getUserById(int id);
    public void insertUserStore(User user) throws SQLException;
    void addUserTransaction(User user, List<Integer> permission);
   // public void insertUpdateWithoutTransaction();
    public void insertUpdateUseTransaction();
    public List<User> selectUserStore();
    public boolean updateUserStore(User user) throws SQLException;
    public boolean deleteUserStore(int id) throws SQLException;
}
