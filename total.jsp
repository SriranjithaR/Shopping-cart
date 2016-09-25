<%@ page import="java.util.*,java.io.*,scartPackage.Scart" %>
<html>
<% 
	int sum=0;
	Scart shoppingCart = (Scart)session.getAttribute("cart");
	HashMap<String,Integer> list=shoppingCart.getCartItems();
	for(String key:list.keySet())
	{
		sum += list.get(key);
	}
	out.print("<h1>"+"TOTAL AMOUNT : Rs. "+sum+"</h1>");
%>
<%@include file="form.html" %>

</html>