import java.time.LocalDate;
import java.util.Arrays;
import java.util.Date;

public class Account {

		int id;
		String email;
		String userName;
		String fullName; 
		Department department;//goi luon thuoc tinh department de lay ra departmentID, departmentName
		Position position;
		LocalDate createDate;
		Group[] groups;
		@Override
		public String toString() {
			return "Account [ email=" + email + ", userName=" + userName + ", fullName=" + fullName
					+ ", department=" + department.getName() + ", position=" + position + ", createDate=" + createDate
					+ ", groups=" + Arrays.toString(groups) + "]";
		}
		
		

}
