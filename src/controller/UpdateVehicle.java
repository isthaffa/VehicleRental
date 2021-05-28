package controller;

import java.io.IOException;

import javax.naming.ldap.Rdn;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import sun.security.mscapi.CKeyPairGenerator.RSA;
import Dao.VehicleDao;
import model.Vehicle;

/**
 * Servlet implementation class UpdateVehicle
 */
@WebServlet(name ="UpdateVehicle",urlPatterns={"/UpdateVehicle"})
public class UpdateVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateVehicle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idString=request.getParameter("id");
		Vehicle vehicle=VehicleDao.getVehicle(idString);
		request.setAttribute("editId", idString);
		request.setAttribute("editVehicle", vehicle);
		
        RequestDispatcher dispatcher = request.getRequestDispatcher("RetriveVehicle");  
        dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
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
			 vehicle.setId(id);
			System.out.println(id);
			 int result=VehicleDao.editVehicle(vehicle);
			 
			 RequestDispatcher dispatcher = request.getRequestDispatcher("RetriveVehicle");  
		        dispatcher.forward(request, response);
			
	}

}
