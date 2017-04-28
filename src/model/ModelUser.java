package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bean.User;
import librarry.ConnectDB;

public class ModelUser {
	private ConnectDB cDB;
	private Connection conn;
	private Statement st;
	private ResultSet rs;
	private PreparedStatement pst;
	private String table;
	
	public ModelUser(){
		cDB = new ConnectDB();
		this.table = "users";
	}

	public int editUser(User objUser) {
		conn=cDB.getConnectmysql();
		String sql="Update "+table+" set name_user=?, email=?, phone=?, avatar=? where id_user=?";
		try {
			pst=conn.prepareStatement(sql);
			pst.setString(1, objUser.getFullName());
			pst.setString(2, objUser.getEmail());
			pst.setString(3, objUser.getPhone());
			pst.setString(4, objUser.getAvatar());
			pst.setInt(5, objUser.getIdUser());
			pst.executeUpdate();
			return 1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
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

	public User getItemByID(int idUser) {
		User objUser= new User();
		conn=cDB.getConnectmysql();
		String sql="SELECT *,u.id_role as idrole FROM "+table+" as u inner join role as r on u.id_role = r.id_role where id_user = ?";
		try {
			pst=conn.prepareStatement(sql);
			pst.setInt(1, idUser);
			rs=pst.executeQuery();
			if(rs.next()){
				String name = rs.getString("username");
				String pass = rs.getString("password");
				String fullname = rs.getString("name_user");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				int idRole = rs.getInt("idrole");
				String nameRole = rs.getString("name_role");
				String avatar = rs.getString("avatar");
				objUser = new User(idUser, name, fullname, pass, phone, email, idRole, nameRole, avatar);
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
		return objUser;
	}

	public User getItembyUsernamePass(String username, String password) {
		User objUser=null;
		conn=cDB.getConnectmysql();
		String sql="SELECT *,u.id_role as idrole FROM "+table+" as u inner join role as r on u.id_role = r.id_role where username=? and password=?";
		try {
			pst=conn.prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2	,password);
			rs=pst.executeQuery();
			if(rs.next()){
				int id = rs.getInt("id_user");
				String fullname = rs.getString("name_user");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				int idRole = rs.getInt("idrole");
				String nameRole = rs.getString("name_role");
				String avatar = rs.getString("avatar");
				objUser = new User(id, username, fullname, password, phone, email, idRole, nameRole, avatar);
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
		return objUser;
	}
	
	public int checkPassword(int id_user, String password) {
		int result = 0;
		conn = cDB.getConnectmysql();
		String sql="SELECT * FROM "+table+" where id_user=? and password=?";
		try {
			pst=conn.prepareStatement(sql);
			pst.setInt(1, id_user);
			pst.setString(2	,password);
			rs=pst.executeQuery();
			if(rs.next()){
				result = 1;
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
		return result;
	}
	
	public int editPassword(String password) {
		conn=cDB.getConnectmysql();
		String sql="Update "+table+" set password=?";
		try {
			pst=conn.prepareStatement(sql);
			pst.setString(1, password);
			pst.executeUpdate();
			return 1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
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
	
	public int countUser() {
		int num = 0;
		conn = cDB.getConnectmysql();
		String sql="select count(*) as sumUser from users";
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next()){
				num=rs.getInt("sumUser");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				st.close();
				rs.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return num;
	}
	
	public int addUser(User objUser){
		conn=cDB.getConnectmysql();
		String sql="insert into "+table+" values(null,?,?,?,?,?,?,?)";
		try{
			pst=conn.prepareStatement(sql);
			pst.setString(1, objUser.getUserName());
			pst.setString(2, objUser.getFullName());
			pst.setString(3, objUser.getPassword());
			pst.setString(4, objUser.getPhone());
			pst.setString(5, objUser.getEmail());
			pst.setInt(6, objUser.getIdRole());
			pst.setString(7, objUser.getAvatar());
			pst.executeUpdate();
			return 1;
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
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
	
	public int checkUsername(String username){
		int result = 0;
		conn = cDB.getConnectmysql();
		String sql="SELECT * FROM "+table+" where username=?";
		try {
			pst=conn.prepareStatement(sql);
			pst.setString(1	,username);
			rs=pst.executeQuery();
			if(rs.next()){
				result = 1;
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
		return result;	
	}
	
	public int checkEmail(String emails){
		int result = 0;
		conn = cDB.getConnectmysql();
		String sql="SELECT * FROM "+table+" where email=?";
		try {
			pst=conn.prepareStatement(sql);
			pst.setString(1	,emails);
			rs=pst.executeQuery();
			if(rs.next()){
				result = 1;
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
		return result;	
	}
}
