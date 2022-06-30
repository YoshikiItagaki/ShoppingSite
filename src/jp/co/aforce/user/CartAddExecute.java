package jp.co.aforce.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Item;
import jp.co.aforce.bean.Product;
import jp.co.aforce.tool.Action;

public class CartAddExecute extends Action {

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
			if(i.getProduct().getProduct_id()==product_id) {
				i.setCount(count);
				return "views/cart.jsp";
			}
		}

		List<Product> list=(List<Product>)session.getAttribute("list");
		for(Product p: list) {
			if(p.getProduct_id()==product_id) {
				Item i = new Item();
				i.setProduct(p);
				i.setCount(count);
				cart.add(i);
			}
		}


		return "views/cart.jsp";


	}


}

/*package jp.co.aforce.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Item;
import jp.co.aforce.bean.Product;
import jp.co.aforce.dao.CartDAO;
import jp.co.aforce.tool.Action;

public class CartAddExecute extends Action {

	@SuppressWarnings("unchecked")
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session=request.getSession();

		int product_id=Integer.parseInt(request.getParameter("product_id"));
		String product_name=request.getParameter("product_name");
		int price=Integer.parseInt(request.getParameter("price"));
		int count=Integer.parseInt(request.getParameter("count"));
		int total= (int)(price*count*1.1);

		CartDAO dao=new CartDAO();
		int line = dao.cart(product_id, product_name, price, count, total);




		List<Item> cart=(List<Item>)session.getAttribute("cart");
		if(cart==null) {
			cart=new ArrayList<Item>();
			session.setAttribute("cart", cart);
		}

		for(Item i : cart) {
			if(i.getProduct().getProduct_id()==product_id) {
				i.setCount(i.getCount()+count);
				return "views/cart.jsp";
			}
		}

		List<Product> list=(List<Product>)session.getAttribute("list");
		for(Product p: list) {
			if(p.getProduct_id()==product_id) {
				Item i = new Item();
				i.setProduct(p);
				i.setCount(count);
				cart.add(i);
			}
		}


		return "views/cart.jsp";


	}


}*/