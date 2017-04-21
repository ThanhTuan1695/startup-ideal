package bean;

public class User {
	private int idUser;
	private String userName;
	private String fullName;
	private String password;
	private String phone;
	private String email;
	private int idRole;
	private String nameRole;
	private String avatar;
	public User() {}
	public User(int idUser, String userName, String fullName, String password,
			String phone, String email, int idRole, String nameRole,
			String avatar) {
		this.idUser = idUser;
		this.userName = userName;
		this.fullName = fullName;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.idRole = idRole;
		this.nameRole = nameRole;
		this.avatar = avatar;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getIdRole() {
		return idRole;
	}
	public void setIdRole(int idRole) {
		this.idRole = idRole;
	}
	public String getNameRole() {
		return nameRole;
	}
	public void setNameRole(String nameRole) {
		this.nameRole = nameRole;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	
}
