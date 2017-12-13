package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProductDAO;
import model.Product;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		String id = request.getParameter("id");
		String url="";
		switch (command) {
		case "delete":
			try {
				ProductDAO.delete(Long.parseLong(id));	
				url = "/admin.jsp";
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
			default:
			break;
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		String name = request.getParameter("name");
		String type = request.getParameter("type");
		String material = request.getParameter("material");
		String appearance = request.getParameter("appearance");
		String price = request.getParameter("price");
		String id = request.getParameter("id");
		String url = "";
		switch (command) {
		case "insert":
			Product p = new Product();
			p.setChatlieu(material);
			p.setDang(appearance);
			p.setGuitar(Integer.parseInt(type));
			p.setName(name);
			p.setPrice(Integer.parseInt(price));
			try {
				ProductDAO.insert(p);
				url = "/admin.jsp";
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				url = "/insert.jsp";
			}
			break;
		case "update":
			Product p1 = new Product();
			p1.setIdprod(Integer.parseInt(id));
			p1.setChatlieu(material);
			p1.setDang(appearance);
			p1.setGuitar(Integer.parseInt(type));
			p1.setName(name);
			p1.setPrice(Integer.parseInt(price));
			try {
				ProductDAO.update(p1);
				url = "/admin.jsp";
			} catch (SQLException e) {
				e.printStackTrace();
				url = "/update.jsp";
			}
			break;	
			

		default:
			break;
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
