package jp.co.aforce.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Customer;
import jp.co.aforce.bean.Item;
import jp.co.aforce.dao.CustomerDAO;
import jp.co.aforce.tool.Action;

public class PurchaseConfirmExecute extends Action {

	@SuppressWarnings("unchecked")
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();

		String id = request.getParameter("id");
		String password = request.getParameter("password");

		CustomerDAO dao = new CustomerDAO();
		Customer customer = dao.login(id, password);

		if (customer == null) {
			return "views/preview-error-login.jsp";
		}

		List<Item> cart = (List<Item>) session.getAttribute("cart");

		if (cart == null || cart.size() == 0) {
			return "views/preview-error-cart.jsp";


		}
		request.setAttribute("customer", customer);

		return "views/purchase-in.jsp";
	}

}
