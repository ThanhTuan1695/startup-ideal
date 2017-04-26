package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.Category;
import librarry.ConnectDB;;

public class ModelCategory{
	private ConnectDB cDB;
	private Connection conn;
	private Statement st;
	private ResultSet rs;
	private PreparedStatement pst;
	private String table;
	
	public ModelCategory(){
		cDB = new ConnectDB();
		this.table="category";
	}
	
	public ArrayList<Category> getList() {
		ArrayList<Category> listCat= new ArrayList<>();
		conn=cDB.getConnectmysql();
		String sql="SELECT * FROM category";
		try {
			pst=conn.prepareStatement(sql);
			rs=pst.executeQuery();
			while(rs.next()){
				Category objCat=new Category(rs.getInt("id_category"), rs.getString("name_category"));
				listCat.add(objCat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pst.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return listCat;
	}
}
