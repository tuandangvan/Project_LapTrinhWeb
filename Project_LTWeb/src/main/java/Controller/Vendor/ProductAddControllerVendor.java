package Controller.Vendor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.ProductModel;
import Service.IProductService;
import Service.Impl.ProductServiceImpl;
import util.ConvertBigDecimal;
import util.ProcessCookies;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/vendor/product/add" })
public class ProductAddControllerVendor extends HttpServlet {
	IProductService productService = new ProductServiceImpl();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");

		// lay userid
		String userid = ProcessCookies.getUserIdFromCookies(req, resp);

		try {

			ProductModel product = new ProductModel();
			product.setName(req.getParameter("name"));
			product.setSlug(req.getParameter("slug"));
			product.setDescription(req.getParameter("description"));
			product.setPrice(ConvertBigDecimal.createBigDecimalFromString(req.getParameter("price")));
			product.setPromotion(Integer.parseInt(req.getParameter("promotion")));
			product.setCategory_id(Integer.parseInt(req.getParameter("category_id")));
			product.setStoreId(Integer.parseInt(productService.findStoreIdByUserId(Integer.parseInt(userid))));

			productService.insert(product);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			resp.sendRedirect(req.getContextPath() + "/vendor/product");
		}
	}

}
