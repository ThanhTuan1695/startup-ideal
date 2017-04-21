package model.bean;

public class Imformation {
	private int id;
	private String address;
	private String phone;
	private String email;
	private String account_skype;
	private String account_facebook;
	private String account_gg;
	private String linkMap;
	public Imformation() {}
	public Imformation(int id, String address, String phone, String email,
			String account_skype, String account_facebook, String account_gg,
			String linkMap) {
		this.id = id;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.account_skype = account_skype;
		this.account_facebook = account_facebook;
		this.account_gg = account_gg;
		this.linkMap = linkMap;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getAccount_skype() {
		return account_skype;
	}
	public void setAccount_skype(String account_skype) {
		this.account_skype = account_skype;
	}
	public String getAccount_facebook() {
		return account_facebook;
	}
	public void setAccount_facebook(String account_facebook) {
		this.account_facebook = account_facebook;
	}
	public String getAccount_gg() {
		return account_gg;
	}
	public void setAccount_gg(String account_gg) {
		this.account_gg = account_gg;
	}
	public String getLinkMap() {
		return linkMap;
	}
	public void setLinkMap(String linkMap) {
		this.linkMap = linkMap;
	}
	
}
