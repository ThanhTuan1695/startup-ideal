package bean;

public class UserContact {
	private int idUsercontact;
	private String nameUsercontact;
	private String email;
	private String phonenumber;
	private String detailText;
	public UserContact() {}
	public UserContact(int idUsercontact, String nameUsercontact, String email,
			String phonenumber, String detailText) {
		this.idUsercontact = idUsercontact;
		this.nameUsercontact = nameUsercontact;
		this.email = email;
		this.phonenumber = phonenumber;
		this.detailText = detailText;
	}
	public int getIdUsercontact() {
		return idUsercontact;
	}
	public void setIdUsercontact(int idUsercontact) {
		this.idUsercontact = idUsercontact;
	}
	public String getNameUsercontact() {
		return nameUsercontact;
	}
	public void setNameUsercontact(String nameUsercontact) {
		this.nameUsercontact = nameUsercontact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getDetailText() {
		return detailText;
	}
	public void setDetailText(String detailText) {
		this.detailText = detailText;
	}
	
	
	
}
