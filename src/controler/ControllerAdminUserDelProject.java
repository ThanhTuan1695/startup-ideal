package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import librarry.CheckLogin;
import model.ModelProject;

/**
 * Servlet implementation class ControllerAdminDelUser
 */
public class ControllerAdminUserDelProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAdminUserDelProject() {
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
		if (CheckLogin.CheckLoginLib(request, response)==false){
			return;
		}
		ModelProject mProject = new ModelProject();
		if(request.getParameter("pid")!=null){
			int id = Integer.parseInt(request.getParameter("pid"));
			if(mProject.delProject(id)!=0){
				response.sendRedirect(request.getContextPath()+"/admin/user_qlbaidang?msg=3");
				return;
			}else{
				response.sendRedirect(request.getContextPath()+"/admin/user_qlbaidang?msg=0");
				return;
			}
		}else{
			RequestDispatcher rd= request.getRequestDispatcher("/admin/user_ql_baidang.jsp");
			rd.forward(request, response);
		}
	}

}
