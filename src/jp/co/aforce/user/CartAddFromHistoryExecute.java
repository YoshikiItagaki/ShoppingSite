/*package jp.co.aforce.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Item;
import jp.co.aforce.bean.Purchase;
import jp.co.aforce.tool.Action;

public class CartAddFromHistoryExecute extends Action {

	@SuppressWarnings("unchecked")
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();

		int product_id=Integer.parseInt(request.getParameter("product_id"));
		int count = Integer.parseInt(request.getParameter("count"));

		List<Item> cart=(List<Item>)session.getAttribute("cart");
		if(cart==null) {
			cart=new ArrayList<Item>();
			session.setAttribute("cart", cart);
		}

		for(Item i : cart) {
			if(i.getPurchase().getProduct_id()==product_id) {
				i.setCount(count);
				return "views/cart.jsp";
			}
		}

		List<Purchase> list=(List<Purchase>)session.getAttribute("list");
		for(Purchase p: list) {
			if(p.getProduct_id()==product_id) {
				Item i = new Item();
				i.setPurchase(p);
				i.setCount(count);
				cart.add(i);
			}
		}


		return "views/cart-from-history.jsp";



	}


}*/