package jp.co.aforce.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Admin;
import jp.co.aforce.dao.AdminDAO;
import jp.co.aforce.tool.Action;

public class LogoutExecute extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
		) throws Exception{

			response.setContentType("text/html; charset=UTF-8");
			request.setCharacterEncoding("UTF-8");


			HttpSession session=request.getSession();

			String id=request.getParameter("id");
			String password=request.getParameter("password");
			AdminDAO dao=new AdminDAO();
			Admin admin=dao.login(id, password);

			if(admin!=null) {
				session.removeAttribute("admin");
				return "admin-views/admin-logout-out.jsp";
			}


			return "admin-views/admin-logout-error.jsp";


		}

}
