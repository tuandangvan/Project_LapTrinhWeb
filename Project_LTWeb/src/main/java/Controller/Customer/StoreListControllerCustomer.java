package Controller.Customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.CartItemModel;
import Models.StoreModel;
import Service.ICartItemService;
import Service.IProductService;
import Service.IStoreService;
import Service.Impl.CartItemServiceImpl;
import Service.Impl.ProductServiceImpl;
import Service.Impl.StoreServiceImpl;
import util.ProcessCookies;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/user/shops"})
public class StoreListControllerCustomer extends HttpServlet{

	IProductService productService = new ProductServiceImpl();
	IStoreService storeService = new StoreServiceImpl();
	ICartItemService cartItemService = new CartItemServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = ProcessCookies.getUserIdFromCookies(req, resp);
		
		req.setAttribute("userId", userId);
		CartItemModel cart = cartItemService.findCartAndCountProductID(Integer.parseInt(userId));
		req.setAttribute("cart", cart);
		List<StoreModel> stor = storeService.getAllInfo(0,"0");
		req.setAttribute("stor",stor);
		String userID = ProcessCookies.getUserIdFromCookies(req, resp);
		req.setAttribute("userId", userID);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/customer/store-list.jsp");
		dispatcher.forward(req, resp);
	}
}
