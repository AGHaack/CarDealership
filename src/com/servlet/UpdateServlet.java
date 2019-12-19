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
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vinNum = request.getParameter("vinNum");
		Car carToUpdate = new Car();
		
		ArrayList<Car> carInventory = new ArrayList<Car>();
		try {
			carInventory = carToUpdate.loadInventory();
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		for(Car c : carInventory)
		{
			if(c.getVinNum().equals(vinNum))
			{
				carToUpdate = c;
				carInventory.remove(c);
				break;
			}
		}
		Car updatedCar = new Car();
		updatedCar.setVinNum(carToUpdate.getVinNum());
		updatedCar.setPreOwned(carToUpdate.isPreOwned());
		updatedCar.setInAuction(carToUpdate.isInAuction());
		updatedCar.setMake(carToUpdate.getMake());
		updatedCar.setModel(carToUpdate.getModel());
		updatedCar.setYear(carToUpdate.getYear());
		updatedCar.setColor(carToUpdate.getColor());
		updatedCar.setPrice(carToUpdate.getPrice());
		updatedCar.setMileage(carToUpdate.getMileage());
		
		updatedCar.setPurchaseDate(carToUpdate.getPurchaseDate());
		if(!(request.getParameter("newDescription").equals(null)))
		{
			updatedCar.setDescription(request.getParameter("newDescription"));
		}
		else
		{
			updatedCar.setDescription(carToUpdate.getDescription());
		}
		if(!(request.getParameter("newPic").equals(null)))
		{
			updatedCar.setMainPicFile(request.getParameter("newPic"));
		}
		else
		{
			updatedCar.setMainPicFile(carToUpdate.getMainPicFile());
		}
		carInventory.add(updatedCar);
		try {
			updatedCar.updateInventory(carInventory);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session = request.getSession(true);
		session.setAttribute("msg", "The inventory of Fast Cars has been updated.");
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
