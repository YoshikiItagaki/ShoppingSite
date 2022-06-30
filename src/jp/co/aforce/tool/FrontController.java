package jp.co.aforce.tool;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontController
 */
@WebServlet(urlPatterns= {"*.execute"})
public class FrontController extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			String path=request.getServletPath().substring(1);
			String name=path.replace(".e", "E").replace('/', '.');
			Action action=(Action)Class.forName(name).getDeclaredConstructor().newInstance();
			String url=action.execute(request, response);
			request.getRequestDispatcher(url).forward(request, response);
		} catch (Exception e) {
			System.out.println(e);
			request.getRequestDispatcher("views/top.jsp").forward(request, response);

			e.printStackTrace();
		}
	}

}
