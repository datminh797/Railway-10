package backend.datalayer;

import java.sql.SQLException;
import java.util.ArrayList;

import entity.User;

public class UserRepository implements IUserRepository{

	@Override
	public ArrayList<User> getListUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserById(int id) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getManagerById(int id) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User login(String email, String password) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
}
