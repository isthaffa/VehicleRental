package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.VehicleDao;
import model.Vehicle;

/**
 * Servlet implementation class AddVehicle
 */
@WebServlet("/AddVehicle")
public class AddVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddVehicle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String licenseNo=request.getParameter("licence");
	String vehicleType=request.getParameter("type");
	 int mileAge=Integer.parseInt(request.getParameter("mileAge"));
		 String color=request.getParameter("color");
		String modelString=request.getParameter("model");
		 boolean isAutomatic=Boolean.parseBoolean(request.getParameter("automatic"));
		 int madeYear=Integer.parseInt(request.getParameter("year"));
		 
		 String am =request.getParameter("number");
		 double amount= Double.parseDouble(am);
		 
		 
		 Vehicle vehicle=new Vehicle(licenseNo, vehicleType, mileAge, color, modelString, isAutomatic, madeYear, amount);
		 
		 int results=VehicleDao.addVehicle(vehicle);
		 
		 if(results==1){
			 out.println("<script>alert('successfully added')</script>");
			 RequestDispatcher ds=request.getRequestDispatcher("addVehicle.jsp");
			 ds.forward(request, response);
		 }else{
			 System.err.println("something went wrong");
		 }
		 
	
	}

}
