package librarry;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckLogin {
	public static boolean CheckLoginLib(HttpServletRequest request, HttpServletResponse response){
		HttpSession session= request.getSession();
		if (session.getAttribute("objUser")==null){
			try {
				response.sendRedirect(request.getContextPath()+"/admin/login");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return false;
		}
		return true;
	}
}
