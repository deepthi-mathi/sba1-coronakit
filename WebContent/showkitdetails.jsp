<%@ page language="java" import="com.wellsfargo.sba.coronakit.modal.*,java.util.*,java.text.*" %>

<%-- Show the header with the shopping cart image --%>
<table border="0">
<tr><td><img src="cart4.png"><td><h1>Shopping Cart</h1>
</table>

<%
// Get the current shopping cart from the user's session.
    KitDetail cart = (KitDetail) session.getAttribute("KitDetail");

// If the user doesn't have a shopping cart yet, create one.
    if (cart == null)
    {
        cart = new KitDetail();
        session.setAttribute("ShoppingCart", cart);
    }

// Get the items from the cart.
    Vector items = new Vector();
    //cart.getAll();

// If there are no items, tell the user that the cart is empty.
    if (items.size() == 0)
    {
        out.println("<h3>Your shopping cart is empty.</h3>");
    }
    else
    {
%>
<%-- Display the header for the shopping cart table --%>
<br>
<table border=4>
<tr><th>Description</th><th>Quantity</th><th>Price</th></tr>
<%

        int numItems = items.size();

// Get a formatter to write out currency values.
        NumberFormat currency = NumberFormat.getCurrencyInstance();

        for (int i=0; i < numItems; i++)
        {
            KitDetail kit = (KitDetail) items.elementAt(i);

// Print the table row for the item.
            out.print("<tr><td>");
            out.print(kit.getId());
            out.print("</td><td>");
            out.print(kit.getCoronaKitId());
            out.print("</td><td>");
            out.print(kit.getProductId());
            out.print("</td><td>");
            out.print(kit.getQuantity());           
            out.print("</td><td>");
            out.print(currency.format(kit.getAmount()));

// Print out a link that allows the user to delete an item from the cart.
            out.println("</td><td>"+
                "<a href=\"/shoppingcart/RemoveItemServlet?item="+
                i+"\">Remove</a></td></tr>");
        }
    }
%>
</table>	