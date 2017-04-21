package model.bean;

public class Project {
	private int idPro;
	private int idUser;
	private String nameUser;
	private String namePro;
	private String picture;
	private String previewText;
	private String describe;
	private String timeCreate;
	private int view;
	private int idCat;
	private String nameCat;
	private int idStatus;
	private String nameStatus;
	public Project() {}
	public Project(int idPro, int idUser, String nameUser, String namePro,
			String picture, String previewText, String describe,
			String timeCreate, int view, int idCat, String nameCat,
			int idStatus, String nameStatus) {
		this.idPro = idPro;
		this.idUser = idUser;
		this.nameUser = nameUser;
		this.namePro = namePro;
		this.picture = picture;
		this.previewText = previewText;
		this.describe = describe;
		this.timeCreate = timeCreate;
		this.view = view;
		this.idCat = idCat;
		this.nameCat = nameCat;
		this.idStatus = idStatus;
		this.nameStatus = nameStatus;
	}
	public int getIdPro() {
		return idPro;
	}
	public void setIdPro(int idPro) {
		this.idPro = idPro;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public String getNameUser() {
		return nameUser;
	}
	public void setNameUser(String nameUser) {
		this.nameUser = nameUser;
	}
	public String getNamePro() {
		return namePro;
	}
	public void setNamePro(String namePro) {
		this.namePro = namePro;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getPreviewText() {
		return previewText;
	}
	public void setPreviewText(String previewText) {
		this.previewText = previewText;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getTimeCreate() {
		return timeCreate;
	}
	public void setTimeCreate(String timeCreate) {
		this.timeCreate = timeCreate;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public int getIdCat() {
		return idCat;
	}
	public void setIdCat(int idCat) {
		this.idCat = idCat;
	}
	public String getNameCat() {
		return nameCat;
	}
	public void setNameCat(String nameCat) {
		this.nameCat = nameCat;
	}
	public int getIdStatus() {
		return idStatus;
	}
	public void setIdStatus(int idStatus) {
		this.idStatus = idStatus;
	}
	public String getNameStatus() {
		return nameStatus;
	}
	public void setNameStatus(String nameStatus) {
		this.nameStatus = nameStatus;
	}
	
	
}
