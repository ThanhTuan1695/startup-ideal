package controler;

import java.awt.Window;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import model.ModelUser;

/**
 * Servlet implementation class ControllerPublicregister
 */
public class ControllerPublicregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerPublicregister() {
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
		ModelUser model=new ModelUser();		
		User ssUser = new User();
		if(request.getParameter("send")!=null){			
			ssUser.setUserName(request.getParameter("name"));
			ssUser.setFullName(request.getParameter("fullname"));
			ssUser.setPassword(request.getParameter("password").toString());
			ssUser.setEmail(request.getParameter("email"));
			ssUser.setPhone(request.getParameter("phone"));
			ssUser.setIdRole(3);
			ssUser.setAvatar("");
			if(model.checkUsername(ssUser.getUserName())!=0){
				response.sendRedirect(request.getContextPath()+"/service.jsp?msg=1");
			}else if(model.checkEmail(ssUser.getEmail())!=0){
				response.sendRedirect(request.getContextPath()+"/service.jsp?msg=2");
			}else{
				if(model.addUser(ssUser)>0){
					HttpSession session= request.getSession();
					User objUser =model.getItembyUsernamePass( ssUser.getUserName(),  ssUser.getPassword());
					session.setAttribute("objUser", objUser);
					response.sendRedirect(request.getContextPath()+"/admin/user_profile");				
				}else{
					
					response.sendRedirect(request.getContextPath()+"/service.jsp?msg=0");
				}
			}
					
		}else{
			RequestDispatcher rd= request.getRequestDispatcher("/service.jsp");
			rd.forward(request, response);
			
		}
		
		
	}

}
