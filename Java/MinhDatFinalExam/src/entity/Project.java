package entity;

public class Project {
	private int projectId;
	private int teamSize;
	private int idManager;
	private int idEmployee;
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public int getTeamSize() {
		return teamSize;
	}
	public void setTeamSize(int teamSize) {
		this.teamSize = teamSize;
	}
	public int getIdManager() {
		return idManager;
	}
	public void setIdManager(int idManager) {
		this.idManager = idManager;
	}
	public int getIdEmployee() {
		return idEmployee;
	}
	public void setIdEmployee(int idEmployee) {
		this.idEmployee = idEmployee;
	}
	public Project() {
		super();
	}
	public Project(int projectId, int teamSize, int idManager, int idEmployee) {
		super();
		this.projectId = projectId;
		this.teamSize = teamSize;
		this.idManager = idManager;
		this.idEmployee = idEmployee;
	}
	
	
	
}
