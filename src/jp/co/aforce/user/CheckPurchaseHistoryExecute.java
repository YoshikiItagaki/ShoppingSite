package jp.co.aforce.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Purchase;
import jp.co.aforce.dao.PurchaseDAO;
import jp.co.aforce.tool.Action;

public class CheckPurchaseHistoryExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		String id=request.getParameter("id");
		String password=request.getParameter("password");

		PurchaseDAO dao= new PurchaseDAO();

		List<Purchase> list = dao.checkPurchaseHistory(id, password);

		if (list.size() == 0) {

			return "views/check-purchase-history-error.jsp";

		}

		session.setAttribute("list", list);

		return "views/check-purchase-history-out.jsp";

	}

}
