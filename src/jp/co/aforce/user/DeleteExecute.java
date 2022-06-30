package jp.co.aforce.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.bean.Customer;
import jp.co.aforce.dao.CustomerDAO;
import jp.co.aforce.tool.Action;

public class DeleteExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		Customer customer= new Customer();
		CustomerDAO dao=new CustomerDAO();

		String id=request.getParameter("id");
		String password=request.getParameter("password");
		customer.setId(id);
		customer.setPassword(password);


		int line =dao.delete(id, password);


		if(line==0) {
			return "views/delete-error.jsp";
		}

		return "views/delete-out.jsp";

	}

}
