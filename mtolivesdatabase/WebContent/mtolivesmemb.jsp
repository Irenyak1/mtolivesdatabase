<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*, java.util.*"%>
<%@ page import = "java.util.Date" %>
<%
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String dateofbirth = request.getParameter("dateofbirth");
String maritalstatus = request.getParameter("maritalstatus");
String churchfamily= request.getParameter("churchfamily");
String fellowshipgroup= request.getParameter("fellowshipgroup");
String highestlevelofeducation = request.getParameter("highestlevelofeducation");
String profession = request.getParameter("profession");
String occupation = request.getParameter("occupation");
String placeofwork = request.getParameter("placeofwork");
String placeofresidence= request.getParameter("placeofresidence");
String phonecontact= request.getParameter("phonecontact");
String emailaddress= request.getParameter("emailaddress");
String dateofbaptism= request.getParameter("dateofbaptism");
String placeofbaptism= request.getParameter("placeofbaptism");
String nameofpastorwhobaptised= request.getParameter("nameofpastorwhobaptised");
String formerreligion= request.getParameter("formerreligion");
String image_url= request.getParameter("image_url");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdamtoliveschurch", "root", "Sweetmom1844.");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into generalmembership(name,gender,dateofbirth,maritalstatus,churchfamily,fellowshipgroup,highestlevelofeducation,profession,occupation,placeofwork,placeofresidence,phonecontact,emailaddress,dateofbaptism,placeofbaptism,nameofpastorwhobaptised,formerreligion,image_url)values ('"+name+"','"+gender+"','"+dateofbirth+"','"+maritalstatus+"','"+churchfamily+"','"+fellowshipgroup+"','"+highestlevelofeducation+"','"+profession+"','"+occupation+"','"+placeofwork+"','"+placeofresidence+"','"+phonecontact+"','"+emailaddress+"','"+dateofbaptism+"','"+placeofbaptism+"','"+nameofpastorwhobaptised+"','"+formerreligion+"','"+image_url+"')");
	out.println("Thanks for registering!");
}

catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>
