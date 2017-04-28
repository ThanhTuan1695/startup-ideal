package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Project;
import model.ModelCategory;
import model.ModelProject;
import model.ModelUser;

/**
 * Servlet implementation class ControllerAdminLogin
 */
public class ControllerPublicDetailProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerPublicDetailProject() {
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
		ModelCategory mCategory = new ModelCategory();
		int id = 0;
		if(request.getParameter("pid")!=null){
			id = Integer.parseInt(request.getParameter("pid"));
		}
		Project  objProject = mProject.getItemById(id);
		request.setAttribute("objProject", objProject);
		request.setAttribute("alCategory", mCategory.getList());
		request.setAttribute("alProjLQ", mProject.getListProjectLQ(objProject.getIdCat()));
		RequestDispatcher rd= request.getRequestDispatcher("/blog-details.jsp");
		rd.forward(request, response);
	}

}
