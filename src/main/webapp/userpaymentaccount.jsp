<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Payment Account</title>
<link rel="Stylesheet" href="style/pay.css"/>


</head>
<body style="background-image:url(images/Slide11.jpg)">

<h1 align ="center">Your Payment Account</h1>

 <div class="reg">
     <form onsubmit="checkPass()">  
        <c:forEach var="pay" items="${payDetails}">
        
        <c:set var="pid" value="${pay.pid}"/>
        <c:set var="cname" value="${pay.cname}"/>
        <c:set var="propertyname" value="${pay.propertyname}"/>
        <c:set var="propertysize" value="${pay.propertysize}"/>
        <c:set var="paymentimp" value="${pay.paymentimp}"/>
        <c:set var="totalamount" value="${pay.totalamount}"/>
        <c:set var="cardno" value="${pay.cardno}"/>
        <c:set var="username" value="${pay.userName}"/>
        
<label>
    Payment ID : <input id="nam" value="${pay.pid}" readonly>
</label><br> 
     
<label>
    Customer Name : <input id="name" value="${pay.cname}" readonly>
</label><br>
    
<label>
    Property Name : <input id="name1" value="${pay.propertyname}" readonly>
</label><br>
    
<label>
    Property Size : <input id="name2" value="${pay.propertysize}" readonly>
</label><br>
    
<label>
    Property Information :<input id="name3" value="${pay.paymentimp}" readonly>
</label><br>
    
<label>
    Property Total Amount : <input id="name4" value="${pay.totalamount}" readonly>
</label><br>
    
<label>
    Customer Card Number : <input id="name5" value="${pay.cardno}" readonly>
</label><br>
    
<label>
    Customer User ID : <input id="name6" value="${pay.userName}" readonly>
</label><br>             
        
        </c:forEach>
        
        
        <c:url value="updatepayment.jsp" var="payupdate">
           <c:param name="pid" value="${pid}"/>
           <c:param name="cname" value="${cname}"/>
           <c:param name="propertyname" value="${propertyname}"/>
           <c:param name="propertysize" value="${propertysize}"/>
           <c:param name="paymentimp" value="${paymentimp}"/>
           <c:param name="totalamount" value="${totalamount}"/> 
           <c:param name="cardno" value="${cardno}"/> 
           <c:param name="uname" value="${username}"/> 
        </c:url>
        
        <a href="${payupdate}">
        <input type="button" id="btnReg" name="update" value="Update My Payment">
        </a>
        
        <br>
        
        <c:url value="deletepayment.jsp" var="paydelete">
           <c:param name="pid" value="${pid}"/>
           <c:param name="cname" value="${cname}"/>
           <c:param name="propertyname" value="${propertyname}"/>
           <c:param name="propertysize" value="${propertysize}"/>
           <c:param name="paymentimp" value="${paymentimp}"/>
           <c:param name="totalamount" value="${totalamount}"/> 
           <c:param name="cardno" value="${cardno}"/> 
           <c:param name="uname" value="${username}"/> 
        </c:url>
        
        <a href="${paydelete}">
        <input type="button" id="btnReg" name="delete" value="Delete My Payment">
        </a>
        
        </form>
</div>
</body>
</html>