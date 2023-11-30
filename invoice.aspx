<%@ Page Language="C#" AutoEventWireup="true" Codefile="invoice.aspx.cs" Inherits="GoodGums"%>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="GoodGumsStyle.css" rel="stylesheet" />
    <title>Good Gums Invoice</title>
</head>
<body>

    <!--NAVBAR-->
    <nav id="navBar">
        <div>
            <img src="GoodGums-images/GoodGums-logo-sm.png" alt="Good Gums Logo" />
        </div>
        <ul>
            <li><a href="index.aspx">Home</a></li>
            <li><a href="add.aspx">Add Record</a></li>
            <li class="nav_Bar is-active"><a href="invoice.aspx">Invoice</a></li>
            <li><a href="stocktake.aspx">Stocktake</a></li>
            <li><a href="chart.aspx">Chart</a></li>
        </ul>
        <div id="welcomeMsg">
            <asp:Label id="activeMsg" runat="server">You are currently active:</asp:Label>
            <asp:Label id="user" Text="" runat="server" />
        </div>
    </nav>

    <!--FORM CONTAINING PAGE CONTENT-->
    <form id="invoiceForm" runat="server"> 
        <h1>Invoice</h1>
        <div>
            <asp:Label class="invoiceLbl" ID="fullName" runat="server" Text="Full Name:" ></asp:Label>
            <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
        </div>

        <table>
            <tr>
                <th>Item:</th>
                <th>Price:</th>
                <th>Quantity:</th>
            </tr>
            <tr>
                <td><asp:TextBox id="invItem1" type="text" runat="server"/></td>
                <td><asp:TextBox id="invPrice1" TextMode="Number" runat="server" Text=""/> </td>
                <td> <asp:TextBox id="invQuantity1" TextMode="Number" runat="server" Text=""/></td>
            </tr>
            <tr>
                <td><asp:TextBox id="invItem2" type="text" runat="server"/></td>
                <td><asp:TextBox id="invPrice2" TextMode="Number" runat="server" Text="0"/> </td>
                <td> <asp:TextBox id="invQuantity2" TextMode="Number" runat="server" Text="0"/></td>
            </tr>
            <tr>
                <td><asp:TextBox id="invItem3" type="text" runat="server"/></td>
                <td><asp:TextBox id="invPrice3" TextMode="Number" runat="server" Text="0"/> </td>
                <td> <asp:TextBox id="invQuantity3" TextMode="Number" runat="server" Text="0"/></td>
            </tr>
        </table>
        <asp:Button id="btnPrint" runat="server" text="Print" onclick="Print_Click"/>

        <!--VALIDATION-->
        <div id="invValidation">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtFullName" runat="server" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="invItem1" runat="server" ErrorMessage="Atleast 1 product required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="invPrice1" runat="server" ErrorMessage="Price Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="invQuantity1" runat="server" ErrorMessage="Quantity Required"></asp:RequiredFieldValidator>
        </div>

        <div id="asideInvoice1">
            <aside><img src="GoodGums-images/Plants/Anigozanthos%20flavidus/shutterstock_1788084995_1.jpg" /></aside>
        </div>
        <div id="asideInvoice2">
            <aside><img src="GoodGums-images/Plants/Boronia%20serrulata/shutterstock_1185578461_1.jpg" /></aside>
        </div>

    </form>

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
