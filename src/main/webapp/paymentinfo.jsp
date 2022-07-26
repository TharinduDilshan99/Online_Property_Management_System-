<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Info</title>
<link rel="Stylesheet" href="style/pay.css"/>

</head>
<body style="background-image:url(images/bb.jpg)">

<h1 align ="center">Payment Details</h1>

<div class="reg">

    <form onsubmit="checkPass()" action="log" method="post">
    
    <label>
    <input type="text" id="name6" name="uid" required placeholder="Customer User ID" oninvalid="this.setCustomValidity('Please Enter Your User ID')">
    </label><br><br> 
    
      <input type="submit" id="btnReg" name="submit" value="submit">
   
   </form>
</div>

</body>
</html>