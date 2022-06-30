package jp.co.aforce.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Admin;
import jp.co.aforce.bean.Purchase;
import jp.co.aforce.dao.AdminDAO;
import jp.co.aforce.dao.PurchaseDAO;
import jp.co.aforce.tool.Action;

public class CheckPurchaseHistoryExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		String id=request.getParameter("id");
		String password=request.getParameter("password");


		AdminDAO daoLogin = new AdminDAO();
		Admin admin = daoLogin.login(id, password);

		if(admin == null) {

			return "admin-views/admin-check-purchase-history-login-error.jsp";
		}


		PurchaseDAO dao= new PurchaseDAO();

		List<Purchase> list = dao.checkPurchaseHistoryAdmin();

		if (list.size() == 0) {

			return "admin-views/admin-check-purchase-history-error.jsp";

		}

		session.setAttribute("list", list);

		return "admin-views/admin-check-purchase-history-out.jsp";

	}

}
