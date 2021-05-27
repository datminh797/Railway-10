import java.time.LocalDate;

/*import Position.PositionName;*/

public class Program {

	public static void main(String[] args) {
		
//		int[] mangA = new int[] {1,2,3,4,5};
////		for (int i =0; i <mangA.length; i++) {
////			System.out.println("Hello Em");
////		}
//		
//		int i = mangA.length-1;
//		for (; i>=0; ) {
//			if (mangA[i] %2 == 0 ) {
//				System.out.println(mangA[i]);
//			}
//		}
		
		Department[] departmentMang = new Department[10];
		for (int i = 0 ; i <departmentMang.length; i++) {
			departmentMang[i] = new Department();
			departmentMang[i].id = i+1;
			departmentMang[i].name = "department"+(i+1);
			i++;
			System.out.println(departmentMang[i]);
		}
		
		
	// Tao doi tuong trong bang Department 
		Department dep1 = new Department();
		dep1.id = 1;
		dep1.name = "Marketing";
		
		Department dep2 = new Department();
		dep2.id = 2;
		dep2.name = "Sale";
		
		Department dep3 = new Department();
		dep3.id = 3;
		dep3.name = "BOD";
		
		// Tao doi tuong cho  bang Position 
		/*Position pos1 = new Position();
		pos1.id = 1;
		pos1.name = PositionName.Dev;
		
		Position pos4 = new Position();
		pos4.id = 1;
		pos4.name = PositionName.Dev();
		
		Position pos2 = new Position();
		pos2.id = 2 ;
		pos2.name = PositionName.PM;
		
		Position pos3 = new Position();
		pos3.id = 3 ;
		pos3.name = PositionName.ScrumMaster; */

		// Tao doi tuong cho bang Group 
		Group group1 = new Group();
		group1.id = 1;
		group1.name = "Testing System";
		
		Group group2 = new Group();
		group2.id = 2;
		group2.name = "Development";
		
		Group group3 = new Group();
		group3.id = 3;
		group3.name = "Sale";
		
		//Tao doi tuong cho bang Account
		Account acc1 = new Account();
		acc1.id = 1;
		acc1.email = "aa1@gmail.com";
		acc1.userName = "aa1";
		acc1.fullName = "full aa1";
		acc1.department = dep1;
		/*acc1.position = pos1;*/
		acc1.createDate = LocalDate.now();
		Group[] groupAcc1 = {group1, group2};
		acc1.groups = groupAcc1;
		
		Account acc2 = new Account();
		acc2.id = 2;
		acc2.email = "aa2@gmail.com";
		acc2.userName = "aa2";
		acc2.fullName = "full aa2";
		acc2.department = dep2;
		/*acc1.position = pos1;*/
		acc2.createDate = LocalDate.now();
		Group[] groupAcc2 = {group1, group2};
		acc2.groups = groupAcc2;
		
		
		System.out.println("Thong tin cac account tren he thong : ");
		
		System.out.println(acc1.toString());
		
		// Assignment 2 
		// Question 1 
		
		if (acc2.department == null) {
			System.out.println("nhan vien nay khong co phong ban");
		}else {
			System.out.println("phong ban cua nhan vien nay la : " + acc2.department);
		}
	
		// Question 2 
		if (acc2.groups == null) {
			System.out.println("Nhan vien nay khong co group");
		} else {
			System.out.println("Nhan vien nay thuoc group " + acc2.groups );
		}
	
	}
}
