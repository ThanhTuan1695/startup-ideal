package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Project;
import librarry.CheckLoginLibrary;
import model.ModelProject;

/**
 * Servlet implementation class ControllerAdminLogout
 */
public class ControllerAdminShowEditProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAdminShowEditProject() {
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
		if(!CheckLoginLibrary.isLogin(request, response)){
			return;
		}
		ModelProject proDAO = new ModelProject();
		int idPro = Integer.parseInt(request.getParameter("pid"));
		Project objPro = proDAO.getItemById(idPro);
		request.setAttribute("objPro", objPro);
		RequestDispatcher  rd = request.getRequestDispatcher("/admin/admin_edit_baidang.jsp");
		rd.forward(request, response);
	}

}
