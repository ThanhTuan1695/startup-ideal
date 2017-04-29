package controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Category;
import librarry.CheckLogin;
import model.ModelCategory;

/**
 * Servlet implementation class ControllerAdminLogout
 */
public class EditCatAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditCatAdminController() {
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
		ModelCategory catDAO = new ModelCategory();
		int idCat = Integer.parseInt(request.getParameter("cid"));
		String nameCat = new String(request.getParameter("nameCat").getBytes("ISO-8859-1"),"UTF-8");
		Category objCat = new Category(idCat, nameCat);
		if(catDAO.editCat(objCat) > 0){
			response.sendRedirect(request.getContextPath()+"/admin/category?msg=3");
		}else {
			response.sendRedirect(request.getContextPath()+"/admin/category?msg=0");
		}
	}

}
