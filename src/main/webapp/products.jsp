<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.hardware.DBConnection" %>

<html>
<head>
<title>Products</title>

<link rel="stylesheet" href="style.css">

</head>
<body>

<h2>Products</h2>



<div class="product-container">

<%
Connection con = DBConnection.getConnection();
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM products");

while(rs.next()){
%>

    <div class="product-card">

        <img src="images/<%= rs.getString("image") %>" width="120"><br>

        <p>
            <%= rs.getString("name") %> - ₹<%= rs.getInt("price") %>
        </p>

        <form action="addToCart" method="post">
            <input type="hidden" name="product" value="<%= rs.getString("name") %>">
            <input type="hidden" name="price" value="<%= rs.getInt("price") %>">
            <input type="hidden" name="image" value="<%= rs.getString("image") %>">
            <button type="submit">Add to Cart</button>
        </form>

    </div>

<%
}
%>

</div>

</body>
</html>


