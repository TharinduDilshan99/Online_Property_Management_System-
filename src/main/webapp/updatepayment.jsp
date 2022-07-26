<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Update Payment</title>
<link rel="Stylesheet" href="style/pay.css"/>


</head>
<body style="background-image:url(images/LL.jpg)">
    
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
    
    <h1 align ="center">Update Your Payment</h1>
    
 <div class="reg">
    <form onsubmit="checkPass()" action="update" method="post">
    
    <label>
    <input type="text" id="nam" name="payid" value="<%= pid %>" readonly>
    </label><br>
      
    <label>
    <input type="text" id="name" name="cname" value="<%= cname %>" required placeholder="Customer Name" oninvalid="this.setCustomValidity('Please Enter Your Name')">
    </label><br>
          
     <label>             
     <input type="text" id="name1" name="propertyname" value="<%= propertyname %>" required placeholder="Property Name" oninvalid="this.setCustomValidity('Please Enter Property Name')">
     </label><br>
       
    <label>      
     <input type="text" id="name2" name="propertysize" value="<%= propertysize %>" required placeholder="Property Size" oninvalid="this.setCustomValidity('Please Enter Property Size')">
     </label><br>
     
    <label>
     <input type="text" id="name3" name="paymentimp" value="<%= paymentimp %>" required placeholder="Property Information" oninvalid="this.setCustomValidity('Please Enter Property information')">
     </label><br>
     
     <label>
     <input type="text" id="name4" name="totalamount" value="<%= totalamount %>" required placeholder="Property Total Amount" oninvalid="this.setCustomValidity('Please Enter Property Total Amount')">
     </label><br>
     
     <label>
     <input type="text" id="name5" name="cardno" value="<%= cardno %>" required placeholder="Customer Card Number" oninvalid="this.setCustomValidity('Please Enter Your Card Number')">
     </label><br>
     
     <label>
     <input type="text" id="name6" name="uname" value="<%= userName %>" required placeholder="Customer User ID" oninvalid="this.setCustomValidity('Please Enter Your User ID')">
     </label><br>
          
      <input type="submit" id="btnReg" name="submit" value="Update My Payment">
          
     </form>
     </div>

</body>
</html>