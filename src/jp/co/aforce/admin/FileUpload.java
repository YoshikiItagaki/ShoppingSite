package jp.co.aforce.admin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class FileUpload
 */
@WebServlet(urlPatterns = { "/jp.co.aforce.admin.FileUpload" })
@MultipartConfig
public class FileUpload extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			response.setContentType("text/html; charset=UTF-8");
			request.setCharacterEncoding("UTF-8");

			String name="写真のアップロードに成功しました。";
			request.setAttribute("word", name);
			Part part = request.getPart("image");

			String file_name = Paths.get(part.getSubmittedFileName()).getFileName().toString();
			System.out.println(file_name);

			//TODO 写真をimgフォルダに追加する際にエラーが起きる。
			String path = getServletContext().getRealPath("/img");
			/*	note: correct path for having photos uploaded
			 * String path = getServletContext().getRealPath("/img")
			 * Usersy.itagakiDesktop15.jpg
				C:\Users\y.itagaki\Eclipse\pleiades-2020-12-java-win-64bit-jre_20201222\pleiades\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\ShoppingSite\img
				;
			*/
			System.out.println(path);

			part.write(path + File.separator + file_name);
			request.setAttribute("file_name", file_name);

			request.getRequestDispatcher("admin-views/admin-update-product-in.jsp").forward(request, response);
		} catch (Exception e) {
			System.out.println(e);
			request.getRequestDispatcher("views/top.jsp").forward(request, response);

			e.printStackTrace();
		}

	}

}
