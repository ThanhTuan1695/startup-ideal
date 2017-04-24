package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import librarry.StringLib;
import model.ModelUser;

/**
 * Servlet implementation class ControllerAdminLogin
 */
public class ControllerAdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ModelUser mUser= new ModelUser();
		if(request.getParameter("submit")!= null){
			String username=request.getParameter("username");
			String password=StringLib.md5(request.getParameter("password"));
			if(mUser.getItembyUsernamePass( username,  password)!=null){
				//đăng nhập đúng
				HttpSession session= request.getSession();
				User objUser = mUser.getItembyUsernamePass( username,  password);
				session.setAttribute("objUser", objUser);
				if(objUser.getIdRole()==1||objUser.getIdRole()==2){
					//Truy cập với quyền Admin
					response.sendRedirect(request.getContextPath()+"/admin/admin_qlbaidang");
				}else if(objUser.getIdRole()==3){
					//Truy cập với quyền User
					response.sendRedirect(request.getContextPath()+"/admin/user_profile");
				}
			}else{
				//đăng nhập sai
				response.sendRedirect(request.getContextPath()+"/admin/login?msg=0");
			}
		}else{
			RequestDispatcher rd= request.getRequestDispatcher("/admin/login.jsp");
			rd.forward(request, response);
		}
	}

}
