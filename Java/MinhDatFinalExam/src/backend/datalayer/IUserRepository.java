package backend.datalayer;

import java.sql.SQLException;
import java.util.ArrayList;

import entity.User;

public interface IUserRepository {
	public ArrayList<User> getListUser();

	User getUserById(int id) throws SQLException, ClassNotFoundException;

	User getManagerById(int id) throws SQLException, ClassNotFoundException;

	User login(String email, String password) throws Exception;
}
