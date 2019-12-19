package com.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.objs.Car;

/**
 * Servlet implementation class AuctionServlet
 */
@WebServlet("/AuctionServlet")
public class AuctionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuctionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Car car = new Car();
		ArrayList<Car> cars = new ArrayList<Car>();
		try {
			cars = car.loadInventory();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<Car> carsInAuction = new ArrayList<Car>();
		
		for(Car c: cars)
		{
			if(c.isInAuction())
			{
				carsInAuction.add(c);
			}
		}
		HttpSession session = request.getSession(true);
		session.setAttribute("cars", carsInAuction);
		RequestDispatcher rs = request.getRequestDispatcher("displayallcars.jsp");
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
