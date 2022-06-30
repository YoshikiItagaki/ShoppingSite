package jp.co.aforce.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.bean.Product;
import jp.co.aforce.dao.ProductDAO;
import jp.co.aforce.tool.Action;

public class DeleteProductExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		Product product= new Product();
		ProductDAO dao=new ProductDAO();

		int product_id=Integer.parseInt(request.getParameter("product_id"));

		product.setProduct_id(product_id);


		int line =dao.deleteProduct(product_id);


		if(line==0) {
			return "admin-views/admin-delete-product-error.jsp";
		}

		return "admin-views/admin-delete-product-out.jsp";
	}

}
