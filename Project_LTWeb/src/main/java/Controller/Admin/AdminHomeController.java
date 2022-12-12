package Controller.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/admin/trang-chu"})
public class AdminHomeController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/HomeAdmin.jsp");
		req.setAttribute("home", "active");
		req.setAttribute("evaluate", "");
		req.setAttribute("category", "");
		req.setAttribute("delivery", "");
		dispatcher.forward(req, resp);
	}

}