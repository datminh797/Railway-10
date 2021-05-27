package frontend;

import java.util.ArrayList;

import backend.controller.UserController;
import entity.Manager;
import entity.Employee;
import entity.User;

public class Program {

	public static void main(String[] args) {
		UserController usercontroller = new UserController();

		ArrayList<User> list = usercontroller.getListUser();
		for (User user : list) {
			if (user instanceof Manager) {
				System.out.println(((Manager) user).toString());
			} else if (user instanceof Employee) {
				System.out.println(((Employee) user).toString());
			} else {
				System.out.println(user.toString());
			}
		}
	}

}
