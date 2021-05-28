package model;

import java.util.UUID;

public class Vehicle {
	private String id;
	private String licenseNo;
	private String vehicleType;
	private int mileAge;
	private String color;
	private String modelString;
	private boolean isAutomatic;
	private int madeYear;
	private double amount;
	
	public Vehicle(){}
	public Vehicle(String licenseNo, String vehicleType,
			int mileAge, String color, String modelString, boolean isAutomatic,
			int madeYear,double amount) {
		this.id = UUID.randomUUID().toString();
		this.licenseNo = licenseNo;
		this.vehicleType = vehicleType;
		this.mileAge = mileAge;
		this.color = color;
		this.modelString = modelString;
		this.isAutomatic = isAutomatic;
		this.madeYear = madeYear;
	}
	
	
	public String getId() {
		
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLicenseNo() {
		return licenseNo;
	}
	public void setLicenseNo(String licenseNo) {
		this.licenseNo = licenseNo;
	}
	public String getVehicleType() {
		return vehicleType;
	}
	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	public int getMileAge() {
		return mileAge;
	}
	public void setMileAge(int mileAge) {
		this.mileAge = mileAge;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getModelString() {
		return modelString;
	}
	public void setModelString(String modelString) {
		this.modelString = modelString;
	}
	public boolean isAutomatic() {
		return isAutomatic;
	}
	public void setAutomatic(boolean isAutomatic) {
		this.isAutomatic = isAutomatic;
	}
	public int getMadeYear() {
		return madeYear;
	}
	public double getAmount() {
		return amount;
	}
	
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	public void setMadeYear(int madeYear) {
		this.madeYear = madeYear;
	}
	
	
	
	

}
