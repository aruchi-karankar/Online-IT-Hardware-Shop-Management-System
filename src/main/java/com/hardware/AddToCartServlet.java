package com.hardware;

import java.io.IOException;


import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/addToCart")
public class AddToCartServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    String product = request.getParameter("product");
	    int price = Integer.parseInt(request.getParameter("price"));
	    String image = request.getParameter("image"); 

	    try {
	        Connection con = DBConnection.getConnection();

	        PreparedStatement ps = con.prepareStatement(
	            "INSERT INTO orders(product_name, price, image) VALUES(?,?,?)"
	        );

	        ps.setString(1, product);
	        ps.setInt(2, price);
	        ps.setString(3, image);

	        ps.executeUpdate();

	        ps.close();
	        con.close();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    response.sendRedirect("cart.jsp");
	}
    }
