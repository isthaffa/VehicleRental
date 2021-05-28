package model;

import java.util.UUID;

public class User {
 private UUID userID;
 private String firstname;
 private String lastname;
 private String email;
 private String username;
 private String password;
 private boolean isAdmin;
 
 public User(){}
 
public User( String firstname, String lastname, String email,
		String username, String password) {
	
	this.userID = UUID.randomUUID();
	this.firstname = firstname;
	this.lastname = lastname;
	this.email = email;
	this.username = username;
	this.password = password;
	this.isAdmin = false;
}
public UUID getUserID() {
	return userID;
}
public void setUserID(UUID userID) {
	this.userID = userID;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPasswordString() {
	return password;
}
public void setPassword(String passwordString) {
	this.password = passwordString;
}
public boolean isAdmin() {
	return isAdmin;
}
public void setAdmin(boolean isAdmin) {
	this.isAdmin = isAdmin;
}
 
 
 
 
 
 
}
