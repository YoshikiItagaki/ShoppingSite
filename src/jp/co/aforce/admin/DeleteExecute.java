package jp.co.aforce.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.bean.Admin;
import jp.co.aforce.dao.AdminDAO;
import jp.co.aforce.tool.Action;

public class DeleteExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		Admin admin= new Admin();
		AdminDAO dao=new AdminDAO();

		String id=request.getParameter("id");
		String password=request.getParameter("password");
		admin.setId(id);
		admin.setPassword(password);


		int line =dao.delete(id, password);


		if(line==0) {
			return "admin-views/admin-delete-error.jsp";
		}

		return "admin-views/admin-delete-out.jsp";

	}

}
