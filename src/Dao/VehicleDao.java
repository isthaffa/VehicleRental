package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.User;
import model.Vehicle;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.online.rental.DatabaseConnector;
import com.sun.org.apache.bcel.internal.generic.NEWARRAY;

public class VehicleDao {
	
	static Connection connection=DatabaseConnector.connect();
	
	public static int addVehicle(Vehicle vehicle){
		String sqlString="insert into vehicle values(?,?,?,?,?,?,?,?,?);";
		
	    try {
		PreparedStatement	preparedStatement=  (PreparedStatement) connection.prepareStatement(sqlString);
		preparedStatement.setString(1, vehicle.getId());
		preparedStatement.setString(2, vehicle.getLicenseNo());
		preparedStatement.setString(3, vehicle.getVehicleType());
		preparedStatement.setInt(4, vehicle.getMileAge());
		preparedStatement.setString(5, vehicle.getColor());
		preparedStatement.setString(6, vehicle.getModelString());
		preparedStatement.setBoolean(7, vehicle.isAutomatic());
		preparedStatement.setInt(8, vehicle.getMadeYear());
		preparedStatement.setDouble(9, vehicle.getAmount());
		int rs=preparedStatement.executeUpdate();
		
		return rs;
		




			
			
			
			
		} catch (SQLException e) {
			System.out.println("error "+e);
		}
		
	    return 0;
	}
	
	public static ArrayList<Vehicle> getVehicles(){

		ArrayList<Vehicle>vehicles=new ArrayList<>();
		String sql="select * from vehicle";
		try {
			java.sql.PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet rs=preparedStatement.executeQuery();
			
			while(rs.next()){
				Vehicle vehicle=new Vehicle();
				
				vehicle.setId(rs.getString("vehicleId"));
				vehicle.setLicenseNo(rs.getString("licenseNo"));
				vehicle.setVehicleType(rs.getString("vehicleType"));
				vehicle.setAmount(rs.getDouble("amount"));
				vehicle.setColor(rs.getString("color"));
				vehicle.setAutomatic(rs.getBoolean("automatic"));
				vehicle.setMadeYear(rs.getInt("madeyear"));
				vehicle.setMileAge(rs.getInt("mileAge"));
				vehicle.setModelString(rs.getString("model"));
				
				vehicles.add(vehicle);
				
				
				
				
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("error"+e);
		}
		return vehicles;
	}
	
	public static Vehicle getVehicle(String id){
		Vehicle vehicle=new Vehicle();
		String sqlString="select * from vehicle where vehicleId=?";
		java.sql.PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement(sqlString);
			preparedStatement.setString(1, id);
			ResultSet rs=preparedStatement.executeQuery();
			System.out.println(rs);
			rs.next();
			vehicle.setId(rs.getString("vehicleId"));
			vehicle.setLicenseNo(rs.getString("licenseNo"));
			vehicle.setVehicleType(rs.getString("vehicleType"));
			vehicle.setAmount(rs.getDouble("amount"));
			vehicle.setColor(rs.getString("color"));
			vehicle.setAutomatic(rs.getBoolean("automatic"));
			vehicle.setMadeYear(rs.getInt("madeyear"));
			vehicle.setMileAge(rs.getInt("mileAge"));
			vehicle.setModelString(rs.getString("model"));

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("error"+e);
		}
		
		return vehicle;
	}
	
	public static int editVehicle(Vehicle vehicle){
		String sqlString="UPDATE vehicle SET licenseNo = ?,vehicleType = ?,mileAge = ?, color = ?, model = ?, automatic = ?, madeyear = ?, amount = ? WHERE vehicleId = ?;";
		java.sql.PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement(sqlString);
			preparedStatement.setString(1, vehicle.getLicenseNo());
			preparedStatement.setString(2, vehicle.getVehicleType());
			preparedStatement.setInt(3, vehicle.getMileAge());
			preparedStatement.setString(4, vehicle.getColor());
			preparedStatement.setString(5, vehicle.getModelString());
			preparedStatement.setBoolean(6, vehicle.isAutomatic());
			preparedStatement.setInt(7, vehicle.getMadeYear());
			preparedStatement.setDouble(8, vehicle.getAmount());
			preparedStatement.setString(9, vehicle.getId());
			
			int rs=preparedStatement.executeUpdate();
			System.out.println(rs);
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("error"+e);
		}
		
		return 0;
	}
	
	public static int deleteVehicle(String id){
		String sqlString="DELETE from vehicle where vehicleId=?;";
		java.sql.PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement(sqlString);
			preparedStatement.setString(1, id);
			int rs=preparedStatement.executeUpdate();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.err.println("error"+e);
		}
		return 0;
	}
	
 
}
	
	


