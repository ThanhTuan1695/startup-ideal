package controler;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import librarry.CheckLogin;
import librarry.FileNameLibrary;
import librarry.RenameFileLibrary;
import model.ModelProject;
import bean.Project;
import bean.User;

/**
 * Servlet implementation class ControllerAdminLogout
 */
@MultipartConfig
public class ControllerAdminAddProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAdminAddProject() {
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
		HttpSession session = request.getSession();
		User objUser = (User) session.getAttribute("objUser");
		System.out.println(objUser);
		ModelProject proDAO = new ModelProject();
		String namePro = new String(request.getParameter("namepro").getBytes("ISO-8859-1"),"UTF-8");
		String preview = new String(request.getParameter("preview").getBytes("ISO-8859-1"),"UTF-8");
		String detail = new String(request.getParameter("detail").getBytes("ISO-8859-1"),"UTF-8");
		int idCat = Integer.parseInt(request.getParameter("nameCat"));
		int idStatus = Integer.parseInt(request.getParameter("status"));
		String picture = "";
		
		response.setContentType("text/html;charset=UTF-8");
		final String path = request.getServletContext().getRealPath("file");
		final Part filePart = request.getPart("picture");
		final String fileName = FileNameLibrary.getFileName(filePart);
		System.out.println(path);
		
		File dirUrl = new File(path);
		if(!dirUrl.exists()){
			dirUrl.mkdir();//tự động tạo file
		}
		
		if(!"".equals(fileName)){
			OutputStream out = null;
			InputStream filecontent = null;
			picture = RenameFileLibrary.renameFile(fileName);
			try {
				out = new FileOutputStream(new File(path + File.separator
						+ picture));
				filecontent = filePart.getInputStream();
				int read = 0;
				final byte[] bytes = new byte[1024];
				while ((read = filecontent.read(bytes)) != -1) {
					out.write(bytes, 0, read);
				}
				System.out.println("Upload thành công");
			} catch (FileNotFoundException fne) {
				System.err.println("Có lỗi trong quá trình xử lý");
				fne.printStackTrace();
			} finally {
				if (out != null) {
					out.close();
				}
				if (filecontent != null) {
					filecontent.close();
				}
			}
		}else{
			picture = "";
		}
		Project objProject = new Project(0, objUser.getIdUser(), null, namePro, picture, preview, detail, null, 0, idCat, null, idStatus, null);
		if(proDAO.addProject(objProject) > 0) {
			response.sendRedirect(request.getContextPath() + "/admin/admin_qlbaidang?msg=3");
		} else {
			response.sendRedirect(request.getContextPath() + "/admin/admin_qlbaidang?msg=0");
		}
		
	}

}
