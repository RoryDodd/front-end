<%@ Page Language="C#" AutoEventWireup="true" Codefile="stocktake.aspx.cs" Inherits="GoodGums"%>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="GoodGumsStyle.css" rel="stylesheet" />
    <title>Good Gums Stocktake</title>
</head>
<body>

    <!--NAVBAR-->
    <nav id="navBar">
        <div>
            <img src="GoodGums-images/GoodGums-logo-sm.png" alt="GoodGums Logo" />
        </div>
        <ul>
            <li><a href="index.aspx">Home</a></li>
            <li><a href="add.aspx">Add Record</a></li>
            <li><a href="invoice.aspx">Invoice</a></li>
            <li class="nav_Bar is-active"><a href="stocktake.aspx">Stocktake</a></li>
            <li><a href="chart.aspx">Chart</a></li>
        </ul>
        <div id="welcomeMsg">
            <asp:Label id="activeMsg" runat="server">You are currently active:</asp:Label>
            <asp:Label id="user" Text="" runat="server" />
        </div>
    </nav>
    
    <!--FORM CONTAINING PAGE CONTENT-->
    <form id="stockTbl" runat="server"> 
       
        <h1>Stocktake</h1>

        <asp:Label Text="Reorder Level:" runat="server" />
        <asp:Button Text="-" runat="server" OnClick="OrderDecrease_Click" />
        <asp:TextBox id="reorderLevel" text="10" runat="server"  Width="20"/>
        <asp:Button text="+" runat="server" OnClick="OrderIncrease_Click"/>

        <table>
            <tr>
                <th>Item:</th>
                <th>Price:</th>
                <th>Quantity:</th>
                <th>Reorder Quantity:</th>
                <th>Subtotal</th>
            </tr>
            <tr>
                <td><asp:TextBox id="text1" type="text" runat="server" MaxLength="1000"/></td>
                <td><asp:TextBox id="price1" TextMode="Number" runat="server" Text=""/> </td>
                <td><asp:TextBox id="quantity1" TextMode="Number" runat="server" Text=""/></td>
                <td><asp:Label id="reorderQuantity1" runat="server"></asp:Label></td>
                <td><asp:Label id="subtotal1" runat="server" Text="$"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:TextBox id="text2" type="" runat="server" MaxLength="1000"/></td>
                <td><asp:TextBox id="price2" TextMode="Number" runat="server" Text="0"/></td>
                <td><asp:TextBox id="quantity2" TextMode="Number" runat="server" Text="0"/></td>
                <td><asp:Label id="reorderQuantity2" runat="server" Text=""></asp:Label></td>
                <td><asp:Label id="subtotal2" runat="server" Text="$"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:TextBox id="text3" type="" runat="server" MaxLength="1000"/></td>
                <td><asp:TextBox id="price3" TextMode="Number" runat="server" Text="0"/></td>
                <td><asp:TextBox id="quantity3" TextMode="Number" runat="server" Text="0"/></td>
                <td><asp:Label id="reorderQuantity3" runat="server" Text=""></asp:Label></td>
                <td><asp:Label id="subtotal3" runat="server" Text="$"></asp:Label></td>
            </tr>
        </table>

        <div>
            <asp:Label id="txtTotal" runat="server" Text="Total Cost:"></asp:Label>
            <asp:Label id="total" runat="server"></asp:Label>
        </div>

        <asp:Button CssClass="btnAdd" Text="Calculate" runat="server" OnClick="Calculate_Click" />

        <!--VALIDATION-->
        <div id="addRequiredMsg">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="price1" runat="server" ErrorMessage="Price Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="quantity1" runat="server" ErrorMessage="Quantity Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="price2" runat="server" ErrorMessage="Price Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="quantity2" runat="server" ErrorMessage="Quantity Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="price3" runat="server" ErrorMessage="Price Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="quantity3" runat="server" ErrorMessage="Quantity Required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator7" ControlToValidate="price1" MinimumValue="0" MaximumValue="1000.00" runat="server" ErrorMessage="Price between 0-1000"></asp:RangeValidator>
            <asp:RangeValidator ID="RangeValidator8" ControlToValidate="price2" MinimumValue="0" MaximumValue="1000" runat="server" ErrorMessage="Price between 0-1000"></asp:RangeValidator>
            <asp:RangeValidator ID="RangeValidator9" ControlToValidate="price3" MinimumValue="0" MaximumValue="1000" runat="server" ErrorMessage="Price between 0-1000"></asp:RangeValidator>
            <asp:RangeValidator ID="RangeValidator10" ControlToValidate="quantity1" MinimumValue="0" MaximumValue="100" runat="server" ErrorMessage="Quantity between 0-100"></asp:RangeValidator>
            <asp:RangeValidator ID="RangeValidator11" ControlToValidate="quantity2" MinimumValue="0" MaximumValue="100" runat="server" ErrorMessage="Quantity between 0-100"></asp:RangeValidator>
            <asp:RangeValidator ID="RangeValidator12" ControlToValidate="quantity3" MinimumValue="0" MaximumValue="100" runat="server" ErrorMessage="Quantity between 0-100"></asp:RangeValidator>
        </div>
    </form>

     <div id="asideStock1">
        <aside><img src="GoodGums-images/Plants/Callistemon%20citrinus/shutterstock_81971158_1.jpg" /></aside>
    </div>
    <div id="asideStock2">
        <aside><img src="GoodGums-images/Plants/Correa%20federation%20bell%20x%20mannii/shutterstock_1711478590_1.jpg" /></aside>
    </div>
    
    <!--FOOTER-->
    <footer id="footer">
        <label>Good Gums Application</label>
        <div id="divFooter1">
            <img id="footImg1" src="GoodGums-images/twitterlogo.png" alt="Alternate Text" />
            <img id="footImg2" src="GoodGums-images/instagramlogo.png" alt="Alternate Text" />
            <img id="footImg3" src="GoodGums-images/facebooklogo.png" alt="Alternate Text" />
        </div>
        <div id="divFooter2">
            <img id="footImg4" src="GoodGums-images/HTML_Validation_logo.png" alt="Alternate Text" />
            <img id="footImg5" src="GoodGums-images/CSS_Validation_logo.png" alt="Alternate Text" />
        </div>
    </footer>

</body>
</html>
