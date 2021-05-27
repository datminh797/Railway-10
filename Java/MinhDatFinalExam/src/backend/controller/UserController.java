package backend.controller;

import java.util.ArrayList;

import backend.businesslayer.UserService;
import entity.User;

public class UserController implements IUserController {
	UserService userService;
	
	public UserController() {
		userService = new UserService ();
	}
	
	

	@Override
	public ArrayList<User> getListUser() {

		return userService.getListUser();
	}

}
