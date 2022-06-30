package jp.co.aforce.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Item;
import jp.co.aforce.dao.PurchaseDAO;
import jp.co.aforce.tool.Action;

public class PurchaseExecute extends Action {

	@SuppressWarnings("unchecked")
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String sex = request.getParameter("sex");
		int birth_year = Integer.parseInt(request.getParameter("birth_year"));

		if (name.isEmpty() || address.isEmpty()) {
			return "views/purchase-error-empty.jsp";
		}

		PurchaseDAO dao = new PurchaseDAO();
		List<Item> cart = (List<Item>) session.getAttribute("cart");

		if (cart == null || !dao.purchase(cart, name, address, id, password, email,sex, birth_year)) {
			return "views/purchase-error-purchase.jsp";
		}

		session.removeAttribute("cart");
		return "views/purchase-out.jsp";

	}

}
