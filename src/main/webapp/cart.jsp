<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.hardware.DBConnection" %>

<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>

<link rel="stylesheet" href="style.css">

</head>
<body>

<h2>Your Orders</h2>

<%
Connection con = DBConnection.getConnection();
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM orders");
%>

<div class="product-container">

<%
while(rs.next()){
%>

<div class="product-card">


<img src="<%= request.getContextPath() %>/images/<%= rs.getString("image") %>" width="100"><br>

<p>
    <%= rs.getString("product_name") %> - ₹<%= rs.getInt("price") %>
</p>

<form action="removeItem" method="post">
  
    <input type="hidden" name="id" value="<%= rs.getInt("id") %>">

    <button type="submit">Remove</button>
</form>

</div>

<%
}
%>

</div>

<form action="checkout.jsp" method="get">
    <button type="submit">Order Now</button>
</form>

</body>
</html>