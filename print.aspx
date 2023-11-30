<%@ Page Language="C#" AutoEventWireup="true" Codefile="print.aspx.cs" Inherits="GoodGums" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="GoodGumsStyle.css" rel="stylesheet" />
    <title>Good Gums Print</title>  
</head>
<body>

    <!--NO NAVBAR, PICTURES OR FOOTER AS THIS IS A PRINT ONLY PAGE.
        INFORMATION IS TRANSFERED FROM THE INVOICE PAGE TO BE PRINTED-->

    <form id="printForm" method="get" runat="server">
        <h2>INVOICE</h2>
        <h1>Good Gums</h1>
        <p>
            123 Plant Road
            Melbourne, Vic, 3000
        </p>
        <p>
            Phone: 52865452
        </p>

        <asp:Label CssClass="pntLabel" id="FName" runat="server" />
        <br />
        <asp:Label CssClass="pntLabel" id="date" runat="server" />

        <table>
            <tr>
                <th>Item:</th>
                <th>Price:</th>
                <th>Quantity:</th>
                <th>Subtotal:</th>
            </tr>
            <tr>
                <td><asp:Label id="item1" runat="server"/></td>
                <td><asp:Label id="price1"  runat="server" Text="0"/></td>
                <td><asp:Label id="quantity1" runat="server" Text="0"/></td>
                <td><asp:Label id="subtotal1" runat="server" Text="0"/></td>
            </tr>
            <tr>
                <td><asp:Label id="item2" runat="server"/></td>
                <td><asp:Label id="price2" runat="server" Text="0"/></td>
                <td><asp:Label id="quantity2" runat="server" Text="0"/></td>
                <td><asp:Label id="subtotal2" runat="server" Text="0"/></td>
            </tr>
            <tr>
                <td><asp:Label id="item3" runat="server"/></td>
                <td><asp:Label id="price3" runat="server" Text="0"/> </td>
                <td><asp:Label id="quantity3" runat="server" Text="0"/></td>
                <td><asp:Label id="subtotal3" runat="server" Text="0"/></td>
            </tr>
            <tr>
                <td><asp:Label id="lblTotal" Text="Total:" Font-Bold="true" runat="server"/></td>
                <td><asp:Label id="Label2" runat="server"/></td>
                <td><asp:Label id="Label3" runat="server" /></td>
                <td><asp:Label id="pntTotal" Font-Bold="true" runat="server"/></td>
            </tr>
        </table>

        <asp:Label CssClass="pntLabel" id="duePeriod" Text="" runat="server" />
        <br />
        <asp:Label CssClass="pntLabel" id="dueDate" Text="" runat="server" />

        <p>
            Thank you for shopping with Good Gums!
        </p>

    </form>

    
</body>
</html>
