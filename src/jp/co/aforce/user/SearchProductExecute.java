package jp.co.aforce.user;

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

		Product product = new Product();

		String keyword=request.getParameter("keyword");

		if(keyword==null) keyword="";

		ProductDAO dao = new ProductDAO();
		List<Product> list  =dao.search(keyword);

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
