<html>
<head>
<title>Checkout</title>
</head>
<body>

<h2>Payment Page</h2>

<form action="placeOrder" method="post">

    Name: <input type="text" name="name"><br><br>
    
    Address: <input type="text" name="address"><br><br>
    
    Payment Method:
    <select name="payment">
        <option>Cash on Delivery</option>
        <option>UPI</option>
        <option>Card</option>
    </select><br><br>

    <button type="submit">Place Order</button>

</form>

</body>
</html>