<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Payment Insert</title>
<link rel="Stylesheet" href="style/pay.css"/>

</head>
<body style="background-image:url(images/beach.jpg)">

<h1 align ="center">Insert Your Payment</h1>

<div class="reg">

   <form onsubmit="checkPass()" action="insert" method="post">
   
   <label>
   <input type="text" id="name" name="cname" required placeholder="Customer Name" oninvalid="this.setCustomValidity('Please Enter Your Name')">
   </label><br>
   
   <label>  
   <input type="text" id="name1" name="propertyname" required placeholder="Property Name" oninvalid="this.setCustomValidity('Please Enter Property Name')"> 
   </label><br>
   
   <label>
   <input type="text" id="name2" name="propertysize" required placeholder="Property Size" oninvalid="this.setCustomValidity('Please Enter Property Size')">
   </label><br>
       
   <label>
   <input type="text" id="name3" name="paymentimp" required placeholder="Property Information" oninvalid="this.setCustomValidity('Please Enter Property information')">
   </label><br>
      
   <label>
   <input type="text" id="name4" name="totalamount" required placeholder="Property Total Amount" oninvalid="this.setCustomValidity('Please Enter Property Total Amount')">
   </label><br>
     
   <label>
   <input type="text" id="name5" name="cardno" required placeholder="Customer Card Number" oninvalid="this.setCustomValidity('Please Enter Your Card Number')">
   </label><br>
   
   <label>  
   <input type="text" id="name6" name="uid" required placeholder="Customer User ID" oninvalid="this.setCustomValidity('Please Enter Your User ID')">
   </label><br><br>    
       
       <input type="submit" id="btnReg" name="submit" value="Create Payment">

   </form>
   </div>

</body>
</html>