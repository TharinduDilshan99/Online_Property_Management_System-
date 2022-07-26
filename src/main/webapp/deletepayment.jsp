<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Payment</title>
<link rel="Stylesheet" href="style/pay.css"/>

</head>
<body style="background-image:url(images/Slide1.jpg)">

    <%
       String pid = request.getParameter("pid");
       String cname = request.getParameter("cname");
       String propertyname = request.getParameter("propertyname");
       String propertysize = request.getParameter("propertysize");
       String paymentimp = request.getParameter("paymentimp");
       String totalamount = request.getParameter("totalamount");
       String cardno = request.getParameter("cardno");
       String userName = request.getParameter("uname");
    %>

      <h1 align ="center">Delete Your Payment</h1>
      
<div class="reg">
     <form onsubmit="checkPass()" action="delete" method="post">
     <label>
    <input type="text" id="nam" name="payid" value="<%= pid %>" readonly>
    </label><br>
      
    <label>
    <input type="text" id="name" name="cname" value="<%= cname %>" readonly>
    </label><br>
          
     <label>             
     <input type="text" id="name1" name="propertyname" value="<%= propertyname %>" readonly>
     </label><br>
       
    <label>      
     <input type="text" id="name2" name="propertysize" value="<%= propertysize %>" readonly>
     </label><br>
     
    <label>
     <input type="text" id="name3" name="paymentimp" value="<%= paymentimp %>" readonly>
     </label><br>
     
     <label>
     <input type="text" id="name4" name="totalamount" value="<%= totalamount %>" readonly>
     </label><br>
     
     <label>
     <input type="text" id="name5" name="cardno" value="<%= cardno %>" readonly>
     </label><br>
     
     <label>
     <input type="text" id="name6" name="uname" value="<%= userName %>" readonly>
     </label><br>
          
          <input type="submit" id="btnReg" name="submit" value="Delete My Payment">
          
          </form>
          </div>
</body>
</html>