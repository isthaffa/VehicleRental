package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Vehicle;
import Dao.VehicleDao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.online.rental.DatabaseConnector;

/**
 * Servlet implementation class RetriveVehicle
 */
@WebServlet("/RetriveVehicle")
public class RetriveVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RetriveVehicle() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init(ServletConfig config){
    	try {
			super.init(config);
			
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			System.out.println("init error");
		}
    	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Vehicle> vehicles=VehicleDao.getVehicles();
		
	
		 request.setAttribute("vehicle",vehicles);
		 RequestDispatcher dispatch = request.getRequestDispatcher("List.jsp");
	       dispatch.forward(request, response);
		
	     
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
