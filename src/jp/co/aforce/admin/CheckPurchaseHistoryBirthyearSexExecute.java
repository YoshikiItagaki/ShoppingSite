package jp.co.aforce.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Purchase;
import jp.co.aforce.dao.PurchaseDAO;
import jp.co.aforce.tool.Action;

public class CheckPurchaseHistoryBirthyearSexExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		int min_birth_year = Integer.parseInt(request.getParameter("min_birth_year"));
		int max_birth_year = Integer.parseInt(request.getParameter("max_birth_year"));
		String sex = request.getParameter("sex");

		PurchaseDAO dao= new PurchaseDAO();

		List<Purchase> list = dao.checkPurchaseHistoryAdminBirthyearSex(min_birth_year, max_birth_year, sex);

		if (list.size() == 0) {

			Purchase purchase = new Purchase();
			String result="お探しのデータはありません。";
			purchase.setResult(result);

			request.setAttribute("purchase", purchase);

			return "admin-views/admin-check-purchase-history-out.jsp";

		}

		session.setAttribute("list", list);

		return "admin-views/admin-check-purchase-history-out.jsp";
	}


}
