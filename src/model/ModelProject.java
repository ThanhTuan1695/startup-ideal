package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.Project;
import librarry.ConnectDB;

public class ModelProject {
	private ConnectDB cDB;
	private Connection conn;
	private Statement st;
	private ResultSet rs;
	private PreparedStatement pst;
	private String table;
	
	public ModelProject(){
		cDB = new ConnectDB();
		this.table = "project";
	}

	public ArrayList<Project> getListByIdUser(int id_user) {
		ArrayList<Project> listProject= new ArrayList<>(); 
		conn=cDB.getConnectmysql();
		String sql="select *,p.id_category as idcat,p.id_status as idstatus from project as p "
				+ "inner join users as u on p.id_user = u.id_user "
				+ "inner join category as c on p.id_category = c.id_category "
				+ "inner join status as s on p.id_status = s.id_status "
				+ "where u.id_user = "+id_user;
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				Project objProject= new Project(rs.getInt("id_project"), id_user, rs.getString("name_user"), 
						rs.getString("name_project"), rs.getString("picture"), rs.getString("preview_text"),
						rs.getString("describe"), rs.getString("time"), rs.getInt("view"), rs.getInt("idcat"), rs.getString("name_category"), 
						rs.getInt("idstatus"), rs.getString("name_status"));
				listProject.add(objProject);
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
		return listProject;
	}

	public Project getItemById(int idProject) {
		Project objProject=new Project();
		conn=cDB.getConnectmysql();
		String sql="select *,p.id_category as idcat,p.id_status as idstatus from project as p "
				+ "inner join users as u on p.id_user = u.id_user "
				+ "inner join category as c on p.id_category = c.id_category "
				+ "inner join status as s on p.id_status = s.id_status "
				+ "where id_Project="+idProject;
		try {
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next()){
				objProject= new Project(rs.getInt("id_project"), rs.getInt("id_user"), rs.getString("name_user"), 
						rs.getString("name_project"), rs.getString("picture"), rs.getString("preview_text"),
						rs.getString("describe"), rs.getString("time"), rs.getInt("view"), rs.getInt("idcat"), rs.getString("name_category"), 
						rs.getInt("idstatus"), rs.getString("name_status"));
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
		return objProject;
	}

	public int addProject(Project objProject) {
		conn=cDB.getConnectmysql();
		String sql="insert into "+table+" (id_user,name_project,picture,preview_text,project.describe,view,id_category,id_status) VALUES(?,?,?,?,?,?,?,?)";
		
		try {
			pst=conn.prepareStatement(sql);
			pst.setInt(1, objProject.getIdUser());
			pst.setString(2	, objProject.getNamePro());
			pst.setString(3, objProject.getPicture());
			pst.setString(4,objProject.getPreviewText());
			pst.setString(5, objProject.getDescribe());
			pst.setInt(6, objProject.getView());
			pst.setInt(7, objProject.getIdCat());
			pst.setInt(8, objProject.getIdStatus());
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

	public int delProject(int idProject) {
		conn=cDB.getConnectmysql();
		String sql="delete from "+table+" where id_Project=?";
		try {
			pst=conn.prepareStatement(sql);
			pst.setInt(1, idProject);
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

	public int editProject(Project objProject) {
		conn=cDB.getConnectmysql();
		String sql="Update "+table+" set name_project=?,picture=?,preview_text=?,project.describe=?,id_category=? where id_project=?";
		try {
			pst=conn.prepareStatement(sql);
			pst.setString(1, objProject.getNamePro());
			pst.setString(2, objProject.getPicture());
			pst.setString(3, objProject.getPreviewText());
			pst.setString(4, objProject.getDescribe());
			pst.setInt(5, objProject.getIdCat());
			pst.setInt(6, objProject.getIdPro());
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
}
