package jp.co.aforce.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.dao.AdminDAO;
import jp.co.aforce.tool.Action;

public class UpdateExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		AdminDAO dao = new AdminDAO();

		String last_name = request.getParameter("last_name");
		String first_name = request.getParameter("first_name");
		String sex = request.getParameter("sex");
		int birth_year = Integer.parseInt(request.getParameter("birth_year"));
		int birth_month = Integer.parseInt(request.getParameter("birth_month"));
		int birth_day = Integer.parseInt(request.getParameter("birth_day"));
		String address = request.getParameter("address");
		String phone_number = request.getParameter("phone_number");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String id=request.getParameter("id");

		int line=dao.update(last_name, first_name, sex,
				birth_year, birth_month, birth_day,
				address, phone_number, email, password,id);

		if(line==0) {
			return "admin-views/admin-update-error.jsp";
		}


		return "admin-views/admin-update-out.jsp";
	}

}
