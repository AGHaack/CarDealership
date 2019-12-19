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

/**
 * Servlet implementation class AddNewServlet
 */
@WebServlet("/AddNewServlet")
public class AddNewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		Car car = new Car();
		if(request.getParameter("preOwned").equals("used"))
		{
			car.setPreOwned(true);
		}
		else
		{
			car.setPreOwned(false);
		}
		
		car.setInAuction(false);
		car.setVinNum(request.getParameter("vinNum"));
		car.setMake(request.getParameter("make"));
		car.setModel(request.getParameter("model"));
		String year = request.getParameter("year");
		car.setYear(Integer.parseInt(year));
		car.setColor(request.getParameter("color"));
		String price = request.getParameter("price");
		car.setPrice(Integer.parseInt(price));
		car.setDescription(request.getParameter("description"));
		String mileage = request.getParameter("mileage");
		car.setMileage(Integer.parseInt(mileage));
		car.setMainPicFile(request.getParameter("mainPicFile"));
		
		car.setPurchaseDate(request.getParameter("purchaseDate"));
		
		car.addToInventory();
	
		session.setAttribute("msg", "Success!  The inventory of Fast Cars has been updated.");
		RequestDispatcher rs = request.getRequestDispatcher("profile.jsp");
		rs.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
