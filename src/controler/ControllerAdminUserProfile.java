package controler;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import bean.User;
import librarry.StringLib;
import librarry.CheckLogin;
import model.ModelUser;


/**
 * Servlet implementation class ControllerAdminAddUser
 */
public class ControllerAdminUserProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAdminUserProfile() {
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
		if (CheckLogin.CheckLoginLib(request, response)==false){
			return;
		}
		ModelUser mUser = new ModelUser();
		HttpSession session = request.getSession();
		User ssUser = (User)session.getAttribute("objUser"); 
		int id_user = ssUser.getIdUser();
		User objUser = mUser.getItemByID(id_user);
		String avatar = objUser.getAvatar();
		String fullname = "";
		String email = "";
		String phone = "";
		if(request.getParameter("edit")!=null){
			DiskFileItemFactory FileItemFactory= new DiskFileItemFactory();
			ServletFileUpload upload= new ServletFileUpload(FileItemFactory);
			try {
				List<FileItem> listItems = upload.parseRequest(request);
				for (FileItem fileItem : listItems) {
					if(fileItem.isFormField()){
						String value=new String(fileItem.getString().getBytes("ISO-8859-1"),"UTF-8");
						String key=fileItem.getFieldName();
						System.out.println(key+":"+value);
						switch(key){
							case "fullname":fullname=value;break;
							case "email":email=value;break;
							case "phone":phone=value;break;
						}
					}else{
						//dạng file	
						String name_img=fileItem.getName();
						if(!"".equals(name_img)){
							if(!"".equals(objUser.getAvatar())){
								String url_img1=request.getServletContext().getRealPath("")+File.separator+"file"+File.separator+objUser.getAvatar();
								File file1= new File(url_img1);
								file1.delete();
							}
							avatar=FilenameUtils.getBaseName(name_img)+"-"+System.nanoTime()+"."+FilenameUtils.getExtension(name_img);
							String dirUpload= request.getServletContext().getRealPath("")+File.separator+"file";
							File dirFile= new File(dirUpload);
							if(!dirFile.exists()){
								dirFile.mkdir();
							}
							String url_img= dirUpload+File.separator+avatar;
							System.out.println(url_img);
							File file= new File(url_img);
							try {
								fileItem.write(file);
							} catch (Exception e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
					}
				}
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			User oUser = new User(id_user, "", fullname, "", phone, email, 0, "", avatar);
			if(mUser.editUser(oUser)>0){
				response.sendRedirect(request.getContextPath()+"/admin/user_profile?msg=2");
			}else{
				response.sendRedirect(request.getContextPath()+"/admin/user_profile?msg=0");

			}
		}else if(request.getParameter("update")!=null){
			String password = StringLib.md5(request.getParameter("password"));
			String newpass = StringLib.md5(request.getParameter("newpass"));
			if(mUser.checkPassword(id_user, password)!=0){
				mUser.editPassword(newpass);
				response.sendRedirect(request.getContextPath()+"/admin/user_profile?msg=1");
			}else{
				response.sendRedirect(request.getContextPath()+"/admin/user_profile?msg=0");
			}
		}else{
			request.setAttribute("objUser", objUser);
			RequestDispatcher rd= request.getRequestDispatcher("/admin/user_profile.jsp");
			rd.forward(request, response);
		}
	}
}
