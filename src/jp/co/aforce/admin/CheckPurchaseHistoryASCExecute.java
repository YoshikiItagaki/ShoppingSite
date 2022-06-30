package jp.co.aforce.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Purchase;
import jp.co.aforce.dao.PurchaseDAO;
import jp.co.aforce.tool.Action;

public class CheckPurchaseHistoryASCExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();


		PurchaseDAO dao= new PurchaseDAO();

		List<Purchase> list = dao.checkPurchaseHistoryAdminASC();

		if (list.size() == 0) {

			return "admin-views/admin-check-purchase-history-error.jsp";

		}

		session.setAttribute("list", list);

		return "admin-views/admin-check-purchase-history-out.jsp";
	}

}
