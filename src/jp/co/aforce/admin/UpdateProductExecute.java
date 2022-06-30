package jp.co.aforce.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.dao.ProductDAO;
import jp.co.aforce.tool.Action;

public class UpdateProductExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		ProductDAO dao=new ProductDAO();

		int product_id=Integer.parseInt(request.getParameter("product_id"));
		String product_name = request.getParameter("product_name");
		int price= Integer.parseInt(request.getParameter("price"));

		int line=dao.updateProduct(product_id, product_name, price);

		if(line==0) {
			return "admin-views/admin-update-product-error.jsp";
		}


		return "admin-views/admin-update-product-out.jsp";
	}

}
