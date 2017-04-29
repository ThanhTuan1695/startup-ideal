package controler;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Category;
import librarry.CheckLogin;
import librarry.ConvertStringLibrary;
import model.ModelCategory;

/**
 * Servlet implementation class ControllerAdminLogout
 */
public class AddCatAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCatAdminController() {
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
		String nameCat = new String(request.getParameter("nameCat").getBytes("ISO-8859-1"),"UTF-8");
		
		ArrayList<Category> list = catDAO.getList();
		boolean check = true;
		for (Category item : list) {
			if (ConvertStringLibrary.createSlug(nameCat).equalsIgnoreCase(ConvertStringLibrary.createSlug(item.getName_cat()))) {
				check = false;
				break;
			} else {
				check = true;
			}
		}
		if (!check) {
			response.sendRedirect(request.getContextPath()
					+ "/admin/category?msg=4");
		} else {
			Category objCat = new Category(0, nameCat);
			if(catDAO.addCat(objCat) > 0){
				response.sendRedirect(request.getContextPath()+"/admin/category?msg=3");
			}else {
				response.sendRedirect(request.getContextPath()+"/admin/category?msg=0");
			}
		}
	}

}
