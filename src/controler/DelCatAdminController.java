package controler;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import librarry.CheckLogin;
import model.ModelCategory;
import model.ModelProject;
import bean.Project;

/**
 * Servlet implementation class ControllerAdminLogout
 */
public class DelCatAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelCatAdminController() {
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
		int idCat = Integer.parseInt(request.getParameter("cid"));
		ModelCategory catDAO = new ModelCategory();
		ModelProject proDAO = new ModelProject();
		//del project has idCat
		if(proDAO.getListPic(idCat) != null) {
			ArrayList<Project> listPic = proDAO.getListPic(idCat);//dùng arrlist để chứa tên ảnh cần xóa
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
			if(proDAO.delProjectByIdCat(idCat) > 0){
				//del cat
				if(catDAO.delCat(idCat) > 0) {
					response.sendRedirect(request.getContextPath() +"/admin/category?msg=2");
				} else {
					response.sendRedirect(request.getContextPath() +"/admin/category?msg=0");
				}
			}else {
				response.sendRedirect(request.getContextPath() +"/admin/category?msg=0");
			}
		} else {
			response.sendRedirect(request.getContextPath() +"/admin/category?msg=0");
		}
	}

}
