package bean;

public class Slide {
	private int idSlide;
	private String nameSlide;
	private String preview;
	private String picture;
	public Slide() {
	}
	public Slide(int idSlide, String nameSlide, String preview, String picture) {
		this.idSlide = idSlide;
		this.nameSlide = nameSlide;
		this.preview = preview;
		this.picture = picture;
	}
	public int getIdSlide() {
		return idSlide;
	}
	public void setIdSlide(int idSlide) {
		this.idSlide = idSlide;
	}
	public String getNameSlide() {
		return nameSlide;
	}
	public void setNameSlide(String nameSlide) {
		this.nameSlide = nameSlide;
	}
	public String getPreview() {
		return preview;
	}
	public void setPreview(String preview) {
		this.preview = preview;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
}
