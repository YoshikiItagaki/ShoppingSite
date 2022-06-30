package jp.co.aforce.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.bean.Customer;
import jp.co.aforce.dao.CustomerDAO;
import jp.co.aforce.tool.Action;

public class DeleteConfirmExecute extends Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		HttpSession session=request.getSession();

		String id=request.getParameter("id");
		String password=request.getParameter("password");

		CustomerDAO dao=new CustomerDAO();
		Customer customer=dao.login(id, password);

		if(customer==null) {
			return "views/delete-confirmation-error.jsp";
		}

		session.setAttribute("customer", customer);
		return "views/delete-in.jsp";
	}

}
