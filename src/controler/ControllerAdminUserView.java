package controler;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Project;
import bean.User;
import librarry.CheckLogin;
import model.ModelProject;


/**
 * Servlet implementation class ControllerAdminAddUser
 */
public class ControllerAdminUserView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAdminUserView() {
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
		HttpSession session = request.getSession();
		User ssUser = (User)session.getAttribute("objUser");
		ModelProject mProject= new ModelProject();
		int id_user = ssUser.getIdUser();
		ArrayList<Project> alProject = (ArrayList<Project>)mProject.getListByIdUser(id_user);
		request.setAttribute("alProject", alProject);
		RequestDispatcher rd= request.getRequestDispatcher("/admin/user_thongke.jsp");
		rd.forward(request, response);

	}
}
