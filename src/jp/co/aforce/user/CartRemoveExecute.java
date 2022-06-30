package jp.co.aforce.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Item;
import jp.co.aforce.tool.Action;

public class CartRemoveExecute extends Action {

	@SuppressWarnings("unchecked")
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {


		HttpSession session = request.getSession();

		int product_id=Integer.parseInt(request.getParameter("product_id"));

		List<Item> cart=(List<Item>)session.getAttribute("cart");

		for(Item item : cart) {
			if(item.getProduct().getProduct_id()==product_id) {
				cart.remove(item);
				break;
			}
		}

		return "views/cart.jsp";
	}

}
