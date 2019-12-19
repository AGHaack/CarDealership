package com.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.objs.Car;
import com.objs.Customer;

/**
 * Servlet implementation class SellCarServlet
 */
@WebServlet("/SellCarServlet")
public class SellCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellCarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vinNum = request.getParameter("vinNum");
		Car carSold = new Car();
		
		ArrayList<Car> carInventory = new ArrayList<Car>();
		try {
			carInventory = carSold.loadInventory();
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		for(Car c : carInventory)
		{
			if(c.getVinNum().equals(vinNum))
			{
				carSold = c;
				carInventory.remove(carSold);
				try {
					carSold.updateInventory(carInventory);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
			}
			
		}
		
		if(!(carSold.getVinNum().equals(vinNum)))
		{
			request.getSession().setAttribute("msg", "Vin not found.");
			response.sendRedirect("sellacar.jsp");
			
		}
		else
		{
			Customer c = new Customer();
			c.setSalesRep(request.getParameter("salesRep"));
			String salePrice = request.getParameter("salePrice");
			c.setSalePrice(Integer.parseInt(salePrice));
			c.setVinSold(vinNum);
			c.setFirstName(request.getParameter("firstName"));
			String dateOfSale = request.getParameter("dateOfSale");
			Date date = null;
			try {
				date = new SimpleDateFormat("MM/dd/yyyy").parse(dateOfSale);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
					
			c.setDateOfSale(date);
			c.setLastName(request.getParameter("lastName"));
			c.setPhoneNum(request.getParameter("phoneNum"));
			c.setEmail(request.getParameter("email"));
			c.setPreOwned(carSold.isPreOwned());
			c.setMakeSold(carSold.getMake());
			c.setModelSold(carSold.getModel());
			c.setYearSold(carSold.getYear());
			try {
				c.updateSalesReport();
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			HttpSession session = request.getSession(true);
			session.setAttribute("msg", "Congrats on your sale!");
			RequestDispatcher rs = request.getRequestDispatcher("profile.jsp");
			rs.forward(request, response);
		}
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
