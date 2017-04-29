package controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import librarry.CheckLogin;
import librarry.StringLib;
import model.ModelUser;

/**
 * Servlet implementation class ControllerAdminLogout
 */
@MultipartConfig
public class EditPasswordUserAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditPasswordUserAdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (CheckLogin.CheckLoginLib(request, response)==false){
			return;
		}
		ModelUser userDAO = new ModelUser();
		int idUser = Integer.parseInt(request.getParameter("uid"));
		String password = StringLib.md5(request.getParameter("newpassword"));
		if(userDAO.updatePassword(idUser, password) >0){
			response.sendRedirect(request.getContextPath() + "/admin/user?msg=1");
		}else{
			response.sendRedirect(request.getContextPath() + "/admin/user?msg=0");
		}
		
	}

}
