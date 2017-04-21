package bean;

public class Category {
	private int id_cat;
	private String name_cat;
	
	public int getId_cat() {
		return id_cat;
	}
	public void setId_cat(int id_cat) {
		this.id_cat = id_cat;
	}
	public String getName_cat() {
		return name_cat;
	}
	public void setName_cat(String name_cat) {
		this.name_cat = name_cat;
	}
	public Category() {}
	public Category(int id_cat, String name_cat) {
		this.id_cat = id_cat;
		this.name_cat = name_cat;
	}
	@Override
	public String toString() {
		return "Category [id_cat=" + id_cat + ", name_cat=" + name_cat + "]";
	}
	
	
}
