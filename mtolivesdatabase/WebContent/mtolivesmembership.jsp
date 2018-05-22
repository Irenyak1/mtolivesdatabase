<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
function validateForm()
{
    if(document.frm.username.value=="")
    {
      alert("User Name should not be blank..");
      document.frm.username.focus();
      return false;
    }
    else if(document.frm.pwd.value=="")
    {
      alert("Password should not be blank");
      document.frm.pwd.focus();
      return false;
    }
}
</script>
<title>Mt.Olives SDA Church</title>
<h2><a href = "mtolivesfacepage.jsp"> Home</a></h2>
<h2><a href = "viewmtolivesmemb.jsp"> Next</a></h2>
</head>
<body>
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
<input type="radio" name="radio1" onclick="handleClick(this.id);" id="customerId" />
 <input type="radio" name="radio1" onclick="handleClick(this.id);" id="companyId" />
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
<h1>Member Registration</h1>
<br>
<form method = "post" action="mtolivesmemb.jsp">
<fieldset> 
<legend style="font-size:25px">Biodata:</legend>
<br>
<label> Name</label>
<input type = "text" name = "name"/>
<br>
<br>
<label> Gender</label>
<input type = "text" name = "gender"/>
<br>
<br>
<label> Date of birth</label>
<input type = "text" name = "dateofbirth"/>
<br>
<br>
<label> Marital Status</label>
<input type = "text" name = "maritalstatus"/>
<br>
<br>
<label> Church family</label>
<input type = "text" name = "churchfamily"/>
<br>
<br>
<label>Fellowship Group</label>
<input type = "text" name = "fellowshipgroup"/>
<br>
<br>
</fieldset>
<br>
<br>
<fieldset>
<legend style="font-size:25px">Education and Profession:</legend>
<br>
<label> Highest level of Education Attained</label>
<input type = "text" name = "highestlevelofeducation"/>
<br>
<br>
<label> Profession</label>
<input type = "text" name = "profession"/>
<br>
<br>
<label> Occupation</label>
<input type = "text" name = "occupation"/>
<br>
<br>
<label>Place of Work</label>
<input type = "text" name = "placeofwork"/>
<br>
<br>
</fieldset>
<br>
<br>
<fieldset>
<legend style="font-size:25px">Residence and contact:</legend>
<br>
<label> Place of Residence</label>
<input type = "text" name = "placeofresidence"/>
<br>
<br>
<label> Phone Contact</label>
<input type = "text" name = "phonecontact"/>
<br>
<br>
<label> Email Address </label>
<input type = "text" name = "emailaddress"/>
<br>
<br>
</fieldset>
<br>
<br>
<fieldset>
<legend style="font-size:25px">Baptism Information:</legend>
<br>
<label> Date of Baptism</label>
<input type = "text" name = "dateofbaptism"/>
<br>
<br>
<label> Place of Baptism</label>
<input type = "text" name = "placeofbaptism"/>
<br>
<br>
<label> Name of Pastor who Baptised</label>
<input type = "text" name = "nameofpastorwhobaptised"/>
<br>
<br>
<label> Former Religion</label>
<input type = "text" name = "formerreligion"/>
<br>
<br>
</fieldset>
<br>
<br>
<fieldset>
<legend style="font-size:25px">Images:</legend>
<br>
<label>Member's Image_url</label>
<input type = "text" name = "Image"/>
<br>
<br>
</fieldset>
<input type = "submit" value = "Submit"/>
<br>
</body>
</html>