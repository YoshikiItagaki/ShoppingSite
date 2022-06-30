package jp.co.aforce.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Product;
import jp.co.aforce.dao.ProductDAO;
import jp.co.aforce.tool.Action;

public class SearchProductExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		String keyword=request.getParameter("keyword");

		if(keyword==null) keyword="";

		ProductDAO dao = new ProductDAO();
		List<Product> list  =dao.search(keyword);

		if(list.size()==0) {

			Product product = new Product();
			String result= "該当する検索結果はありません。";
			product.setResult(result);

			request.setAttribute("product", product);

			return "admin-views/admin-search-product.jsp";
		}

		session.setAttribute("list", list);

		return "admin-views/admin-search-product.jsp";
	}

}
