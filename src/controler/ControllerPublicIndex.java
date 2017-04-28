package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ModelProject;
import model.ModelUser;

/**
 * Servlet implementation class ControllerAdminLogin
 */
public class ControllerPublicIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerPublicIndex() {
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
		ModelProject mProject = new ModelProject();
		ModelUser mUser = new ModelUser();
		request.setAttribute("alNewProject", mProject.getListNewProject());
		request.setAttribute("alHotProject", mProject.getListHotProject());
		request.setAttribute("numProject", mProject.countProject());
		request.setAttribute("numNewProject", mProject.countNewProject());
		request.setAttribute("numView", mProject.countViews());
		request.setAttribute("numUser", mUser.countUser());
		RequestDispatcher rd= request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	}

}
