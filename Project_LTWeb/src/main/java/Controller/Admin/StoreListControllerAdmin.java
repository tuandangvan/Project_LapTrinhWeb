package Controller.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.StoreModel;
import Service.IStoreService;
import Service.Impl.StoreServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/admin/store"})
public class StoreListControllerAdmin extends HttpServlet{

	IStoreService storeService = new StoreServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<StoreModel> storeList = storeService.getAllStoreAD();
		req.setAttribute("storeList", storeList);
		req.setAttribute("store", "active");
		req.setAttribute("user", "");
		req.setAttribute("delivery", "");
		req.setAttribute("evaluate", "");
		req.setAttribute("home", "");
		req.setAttribute("category", "");
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/list-store.jsp");
		dispatcher.forward(req, resp);
	}
	
}
