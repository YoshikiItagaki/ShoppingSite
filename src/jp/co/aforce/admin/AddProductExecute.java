package jp.co.aforce.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.bean.Product;
import jp.co.aforce.dao.ProductDAO;
import jp.co.aforce.tool.Action;

public class AddProductExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		String product_name = request.getParameter("product_name");
		int price = Integer.parseInt(request.getParameter("price"));


		ProductDAO dao=new ProductDAO();
		Product product= dao.checkItem(product_name, price);

		if(product!=null) {
			return "admin-views/admin-add-product-confirmation-error.jsp";

		}


		int line =dao.addProduct(product_name, price);


		//2.3 登録されたことを確認
		if (line==0) {
			return "admin-views/admin-add-product-error.jsp";
		}

		return "admin-views/admin-add-product-out.jsp";
	}

}
