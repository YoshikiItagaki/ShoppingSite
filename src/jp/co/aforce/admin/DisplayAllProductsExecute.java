package jp.co.aforce.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Product;
import jp.co.aforce.dao.ProductDAO;
import jp.co.aforce.tool.Action;

public class DisplayAllProductsExecute extends Action {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		Product product = new Product();

		ProductDAO dao = new ProductDAO();
		List<Product> list  = dao.displayAllProducts();

		if(list.size()==0) {

			String result= "商品リストを表示できません。";
			product.setResult(result);


			request.setAttribute("product", product);

			return "admin-views/display-all-products.jsp";
		}

		session.setAttribute("list", list);

		return "admin-views/admin-display-all-products.jsp";
	}

}
