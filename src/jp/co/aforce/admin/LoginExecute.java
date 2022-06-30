package jp.co.aforce.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Admin;
import jp.co.aforce.dao.AdminDAO;
import jp.co.aforce.tool.Action;

public class LoginExecute extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
		) throws Exception{

			//アルファベット
			response.setContentType("text/html; charset=UTF-8");
			request.setCharacterEncoding("UTF-8");


			HttpSession session=request.getSession();

			String id=request.getParameter("id");
			String password=request.getParameter("password");

			AdminDAO dao=new AdminDAO();
			Admin admin=dao.login(id, password);

			if(admin == null) {

				return "admin-views/admin-login-error.jsp";
			}


			session.setAttribute("admin", admin);
			return "admin-views/admin-login-out.jsp";




		}

}
