package jp.co.aforce.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Product;
import jp.co.aforce.dao.ProductDAO;
import jp.co.aforce.tool.Action;

public class SearchProductPriceExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		Product product = new Product();

		int min = Integer.parseInt(request.getParameter("min"));
		int max = Integer.parseInt(request.getParameter("max"));


		ProductDAO dao = new ProductDAO();
		List<Product> list  =dao.searchProductPrice(min, max);

		if(list.size()==0) {

			String result= "該当する検索結果はありません。";
			product.setResult(result);


			request.setAttribute("product", product);

			return "views/search-product.jsp";
		}

		session.setAttribute("list", list);

		return "views/search-product.jsp";
	}

}
