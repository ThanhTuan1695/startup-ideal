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

import bean.Project;
import bean.User;
import librarry.CheckLogin;
import model.ModelCategory;
import model.ModelProject;


/**
 * Servlet implementation class ControllerAdminAddUser
 */
public class ControllerAdminUserAddProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAdminUserAddProject() {
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
		ModelProject mProject = new ModelProject();
		ModelCategory mCategory = new ModelCategory();
		HttpSession session = request.getSession();
		User ssUser = (User)session.getAttribute("objUser");
		int id_user = ssUser.getIdUser();
		String name = "";
		int id_cat = 0;
		String preview = "";
		String detail = "";
		String picture = "";
		
		if(request.getParameter("add")!=null){
			DiskFileItemFactory FileItemFactory= new DiskFileItemFactory();
			ServletFileUpload upload= new ServletFileUpload(FileItemFactory);
			try {
				List<FileItem> listItems=upload.parseRequest(request);
				for (FileItem fileItem : listItems) {
					if(fileItem.isFormField()){
						//không phải dạng file
						String value=new String(fileItem.getString().getBytes("ISO-8859-1"),"UTF-8");
						String key=fileItem.getFieldName();
						switch(key){
							case "name":name=value;break;
							case "id_cat":id_cat=Integer.parseInt(value);break;
							case "preview":preview=value;break;
							case "detail":detail=value;break;
						}
					}else{
						//dạng file	
						String name_img=fileItem.getName();
						if(!"".equals(name_img)){
							picture = FilenameUtils.getBaseName(name_img)+"-"+System.nanoTime()+"."+FilenameUtils.getExtension(name_img);
							String dirUpload= request.getServletContext().getRealPath("")+File.separator+"file";
							File dirFile= new File(dirUpload);
							if(!dirFile.exists()){
								dirFile.mkdir();
							}
							String url_img= dirUpload+File.separator+picture;
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
			Project objProject = new Project(0, id_user, "", name, picture, preview, detail, "", 0, id_cat, "", 1, "");
			if(mProject.addProject(objProject)>0){
				response.sendRedirect(request.getContextPath()+"/admin/user_qlbaidang?msg=1");
			}else{
				response.sendRedirect(request.getContextPath()+"/admin/user_qlbaidang?msg=0");
			}
		}else{
			request.setAttribute("alCategory", mCategory.getList());
			RequestDispatcher rd= request.getRequestDispatcher("/admin/user_add_baidang.jsp");
			rd.forward(request, response);
		}
	}
}
