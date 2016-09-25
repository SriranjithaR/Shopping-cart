<%@page import="java.io.*,java.util.*,scartPackage.Scart" %>
<%
	String item = request.getParameter("item");
	Integer price = Integer.parseInt(request.getParameter("price"));

	Scart shoppingCart;

	shoppingCart = (Scart)session.getAttribute("cart");
	if(shoppingCart==null)
	{
		shoppingCart = new Scart();
		session.setAttribute("cart",shoppingCart);
	}
	shoppingCart.addToCart(item,price);
	session.setAttribute("cart",shoppingCart);	
	
%>
<html>
<head>
	<title>Shopping Cart</title>
	<style>
		body{ font-family:Calibri;
				background-image:url("wp6.jpeg");
		}
		.buttons{
			height:35;
			width:120;
			border-radius:10px;
			background-color:#95b837 ;
			padding:3px;
			font-size:1.2em;
			font-weight:bold;
			transition-property: width,background-color;
			transition-duration :1s;
		}
		.buttons:hover{
			width:200; background-color:#ff4252;
		}
		a{
			text-decoration:none;
		}
	</style>
</head>
<body><center><br><br>
<table border="1px dashed grey" cellspacing=10; cellpadding=10; style="background-color:#e1e1e1;border-radius:3%">
	
<%
	HashMap<String,Integer> items=shoppingCart.getCartItems();
	for(String key:items.keySet())	
	{
		out.println("<tr>");
		out.println("<td>"+key+"</td>");
		out.println("<td>"+"Rs."+items.get(key)+"</td>");
		out.println("</tr>");
		
	}
%>
</table>
<br>
<a href="acc.html" ><div class="buttons">SHOP MORE</div></a>
<br>
<a href="total.jsp"><div class="buttons">BUY</div></a>
</center></body>
</html>