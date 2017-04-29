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
import javax.servlet.http.Part;

import librarry.CheckLogin;
import librarry.FileNameLibrary;
import librarry.RenameFileLibrary;
import model.ModelUser;
import bean.User;

/**
 * Servlet implementation class ControllerAdminLogout
 */
@MultipartConfig
public class EditUserAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUserAdminController() {
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
		ModelUser userDAO = new ModelUser();
		int idUser = Integer.parseInt(request.getParameter("uid"));
		String fullname = new String(request.getParameter("fullname").getBytes("ISO-8859-1"),"UTF-8");
		String email = new String(request.getParameter("email").getBytes("ISO-8859-1"),"UTF-8");
		String phone = new String(request.getParameter("phone").getBytes("ISO-8859-1"),"UTF-8");
		int idRole = Integer.parseInt(request.getParameter("role"));
		String picture = "";
		
		response.setContentType("text/html;charset=UTF-8");
		final String path = request.getServletContext().getRealPath("file");
		final Part filePart = request.getPart("avatar");
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
			
			String picture_old = userDAO.getItemByID(idUser).getAvatar();
			if(!"".equals(picture_old)){
				String urlDel = path + File.separator + picture_old;
				File delFile = new File(urlDel);
				delFile.delete();
			}
			
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
			picture = userDAO.getItemByID(idUser).getAvatar();
		}
		User objUser = new User(idUser, null, fullname, null, phone, email, idRole, null, picture);
		if(userDAO.editUserByAdmin(objUser) > 0) {
			response.sendRedirect(request.getContextPath() + "/admin/user?msg=1");
		} else {
			response.sendRedirect(request.getContextPath() + "/admin/user?msg=0");
		}
		
	}

}
