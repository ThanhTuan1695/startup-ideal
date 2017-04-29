package controler;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import librarry.CheckLogin;
import model.ModelProject;
import bean.Project;

/**
 * Servlet implementation class ControllerAdminLogout
 */
@MultipartConfig
public class ControllerAdminDelProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAdminDelProject() {
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
		ModelProject proDAO = new ModelProject();
		int idPro = Integer.parseInt(request.getParameter("pid"));
		Project objPro = proDAO.getItemById(idPro);
		
		final String path = request.getServletContext().getRealPath("file");
		String picture = objPro.getPicture();
		if(!"".equals(picture)) {
			String urlFile = path + File.separator + picture;
			File delFile = new File(urlFile);
			delFile.delete();
		}
		if(proDAO.delProject(idPro)>0) {
			response.sendRedirect(request.getContextPath() + "/admin/admin_qlbaidang?msg=2");
		} else {
			response.sendRedirect(request.getContextPath() + "/admin/admin_qlbaidang?msg=0");
		}
	}

}
