package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.Category;
import bean.Project;
import bean.Role;
import librarry.ConnectDB;;

public class ModelRole{
	private ConnectDB cDB;
	private Connection conn;
	private Statement st;
	private ResultSet rs;
	private PreparedStatement pst;
	private String table;
	
	public ModelRole(){
		cDB = new ConnectDB();
		this.table="role";
	}
	
	public ArrayList<Role> getList() {
		ArrayList<Role> list= new ArrayList<>();
		conn=cDB.getConnectmysql();
		String sql="SELECT * FROM role";
		try {
			pst=conn.prepareStatement(sql);
			rs=pst.executeQuery();
			while(rs.next()){
				Role objRole = new Role(rs.getInt("id_role"), rs.getString("name_role"));
				list.add(objRole);
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
		return list;
	}
	
	public int addCat(Category objCat) {
		conn=cDB.getConnectmysql();
		String sql="insert into "+table+" (name_category) VALUES(?)";
		
		try {
			pst=conn.prepareStatement(sql);
			pst.setString(1, objCat.getName_cat());
			pst.executeUpdate();
			return 1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pst.close();
				conn.close();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}
	
	public Category getItemById(int idCat) {
		Category objCat= null;
		conn=cDB.getConnectmysql();
		String sql="select * from category where id_category="+idCat;
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next()){
				objCat= new Category(rs.getInt("id_category"),rs.getString("name_category"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				st.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return objCat;
	}
	
	public int editCat(Category objCat) {
		conn=cDB.getConnectmysql();
		String sql="update "+table+" set name_category = ? where id_category = ?";
		
		try {
			pst=conn.prepareStatement(sql);
			pst.setString(1, objCat.getName_cat());
			pst.setInt(2, objCat.getId_cat());
			pst.executeUpdate();
			return 1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pst.close();
				conn.close();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}
	
	public int delCat(int idCat) {
		conn=cDB.getConnectmysql();
		String sql="delete from category where id_category = ?";
		
		try {
			pst=conn.prepareStatement(sql);
			pst.setInt(1, idCat);
			pst.executeUpdate();
			return 1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pst.close();
				conn.close();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}
}
