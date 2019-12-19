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
 * Servlet implementation class GetCarInfo
 */
@WebServlet("/GetCarInfo")
public class GetCarInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCarInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vin = request.getParameter("vin");
		
		Car car = new Car();
		ArrayList<Car> cars = new ArrayList<Car>();
		try {
			cars = car.loadInventory();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for(Car c : cars)
		{
			if(c.getVinNum().equals(vin))
			{
				car=c;
				break;
			}
		}
		HttpSession session = request.getSession(true);
		session.setAttribute("car", car);
		RequestDispatcher rs = request.getRequestDispatcher("cardetails.jsp");
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
