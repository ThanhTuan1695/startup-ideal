package librarry;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	private Connection conn;
	private  String url = "";
	private  String user = "";
	private  String pass = "";
	private String db;
	
	public ConnectDB(){
		this.db = "startup";
		this.url = "jdbc:mysql://localhost:3306/" + db + "?useUnicode=true&characterEncoding=UTF-8";
		this.user = "root";
		this.pass = "";
	}
	public Connection getConnectmysql(){
		//nạp driver
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pass);
		} catch ( ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	public static void main(String[] args) {
//		ConnectDB db = new ConnectDB();
//		System.out.println(db.getConnectmysql());
	}
}
