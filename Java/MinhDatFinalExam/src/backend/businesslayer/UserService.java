package backend.businesslayer;

import java.util.ArrayList;

import entity.User;

public class UserService implements IUserService {

	UserService userService;
	
	public UserService () {
		userService = new UserService();
	}
	@Override
	public ArrayList<User> getListUser() {
		
		return userService.getListUser();
	}

}
