package jp.co.aforce.tool;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Action
 */
public abstract class Action {

	public abstract String execute(
			HttpServletRequest request, HttpServletResponse response
			)throws Exception;

}
