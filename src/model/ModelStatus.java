package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.Category;
import bean.Status;
import librarry.ConnectDB;;

public class ModelStatus{
	private ConnectDB cDB;
	private Connection conn;
	private Statement st;
	private ResultSet rs;
	private PreparedStatement pst;
	private String table;
	
	public ModelStatus(){
		cDB = new ConnectDB();
		this.table="category";
	}
	
	public ArrayList<Status> getList() {
		ArrayList<Status> listStatus= new ArrayList<>();
		conn=cDB.getConnectmysql();
		String sql="SELECT * FROM status";
		try {
			pst=conn.prepareStatement(sql);
			rs=pst.executeQuery();
			while(rs.next()){
				Status objStatus=new Status(rs.getInt("id_status"), rs.getString("name_status"));
				listStatus.add(objStatus);
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
		return listStatus;
	}
}
