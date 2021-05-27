import java.util.Date;

public class Group {
	
		int id;
		String name;
		int creatorID;
		Date createDate;
		
		@Override
		public String toString() {
			return "Group [id=" + id + ", name=" + name + "]";
		}

		
}
