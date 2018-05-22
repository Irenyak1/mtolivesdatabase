<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>General church membership</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "sdamtoliveschurch";
String userid = "root";
String password = "Sweetmom1844.";
String name = request.getParameter("search");

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h1>Biodata and Profession</h1>
<table border="1">
<tr>
	<td>Id</td>
	<td>Name</td>
	<td>Gender</td>
	<td>Date of Birth</td>
	<td>Marital Status</td>
	<td>Church Family</td>
	<td>Fellowship Group</td>
	<td>Highest level of Education</td>
	<td>Profession</td>
	<td>Occupation</td>
	<td>Place of Work</td>
	<td>Place of Residence</td>
	<td>Phone Contact</td>
	<td>Email Address</td>
	<td>Date of Baptism</td>
	<td>Place of Baptism</td>
	<td>Name of Pastor Who Baptised</td>
	<td>Former Religion</td>
	<td>Image</td>
</tr>
<%
try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql ="select * from generalmembership where name = '"+name+"'";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
	<tr>
		<td><%=resultSet.getString("id") %></td>
		<td><%=resultSet.getString("name") %></td>
		<td><%=resultSet.getString("gender") %></td>
		<td><%=resultSet.getString("dateofbirth") %></td>
		<td><%=resultSet.getString("maritalstatus") %></td>
		<td><%=resultSet.getString("churchfamily") %></td>
		<td><%=resultSet.getString("fellowshipgroup") %></td>
		<td><%=resultSet.getString("highestlevelofeducation") %></td>
		<td><%=resultSet.getString("profession") %></td>
		<td><%=resultSet.getString("occupation") %></td>
		<td><%=resultSet.getString("placeofwork") %></td>
		<td><%=resultSet.getString("placeofresidence") %></td>
		<td><%=resultSet.getString("phonecontact") %></td>
		<td><%=resultSet.getString("emailaddress") %></td>
		<td><%=resultSet.getString("dateofbaptism") %></td>
		<td><%=resultSet.getString("placeofbaptism") %></td>
		<td><%=resultSet.getString("nameofpastorwhobaptised") %></td>
		<td><%=resultSet.getString("formerreligion") %></td>
		<td><img src="<%=resultSet.getString("image_url")%>" alt="provide image" style="height:150px;width:150px"/> </td>
	</tr>
<%

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>