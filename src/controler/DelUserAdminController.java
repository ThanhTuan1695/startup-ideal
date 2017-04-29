package controler;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Project;
import librarry.CheckLogin;
import model.ModelProject;
import model.ModelUser;

/**
 * Servlet implementation class ControllerAdminLogout
 */
public class DelUserAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelUserAdminController() {
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
		int idUser = Integer.parseInt(request.getParameter("uid"));
		ModelProject proDAO = new ModelProject();
		ModelUser userDAO = new ModelUser();
		
		if(proDAO.getListPicByIdUser(idUser) != null) {
			ArrayList<Project> listPic = proDAO.getListPicByIdUser(idUser);//dùng arrlist để chứa tên ảnh cần xóa
			//del picture of project
			if(listPic.size() >= 0) {
				final String path = request.getServletContext().getRealPath("file");
				for (Project objPro : listPic) {
					String picture = objPro.getPicture();
					if(!"".equals(picture)) {
						String urlFile = path + File.separator + picture;
						File delFile = new File(urlFile);
						delFile.delete();
					}
				}
			}
			//del project
			if(proDAO.delProjectByIdUser(idUser) > 0){
				//del user
				if(userDAO.delUser(idUser) > 0) {
					response.sendRedirect(request.getContextPath() +"/admin/user?msg=2");
				} else {
					response.sendRedirect(request.getContextPath() +"/admin/user?msg=0");
				}
			}else {
				response.sendRedirect(request.getContextPath() +"/admin/user?msg=0");
			}
		} else {
			response.sendRedirect(request.getContextPath() +"/admin/user?msg=0");
		}
	}

}
