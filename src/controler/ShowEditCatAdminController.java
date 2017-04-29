package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import librarry.CheckLogin;
import model.ModelCategory;

/**
 * Servlet implementation class ControllerAdminLogout
 */
public class ShowEditCatAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowEditCatAdminController() {
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
		request.setAttribute("objCat", catDAO.getItemById(idCat));
		RequestDispatcher  rd = request.getRequestDispatcher("/admin/admin_edit_danhmuc.jsp");
		rd.forward(request, response);
	}

}
