package jp.co.aforce.admin;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.bean.Admin;
import jp.co.aforce.dao.AdminDAO;
import jp.co.aforce.tool.Action;

public class RegisterExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {


		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

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

		AdminDAO dao=new AdminDAO();
		Admin admin=dao.check(last_name, first_name, sex,
				birth_year, birth_month, birth_day,
				address, phone_number, email, password);

		if(admin!=null) {
			return "admin-views/admin-register-confirmation-error.jsp";

		}

		//2.1 会員番号を採番する。
		//2.1.1 現在日付を取得する
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyMMddHHmmss");
		String d = df.format(date);

		//2.1.2 取得した現在日付の先頭にAを付与して会員番号を作成。
		String id = "B11" + d;

		//2.2 情報をDBに登録

		int line=dao.register(id, last_name, first_name, sex,
				birth_year, birth_month, birth_day,
				address, phone_number, email, password);


		//2.3 登録されたことを確認
		if (line==0) {
			return "admin-views/admin-register-error.jsp";
		}

		return "admin-views/admin-register-out.jsp";
	}

}
