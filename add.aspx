<%@ Page Language="C#" AutoEventWireup="true" Codefile="add.aspx.cs" Inherits="GoodGums"%>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <link href="GoodGumsStyle.css" rel="stylesheet" />
    <title>Good Gums Orders Form</title>
</head>
<body>

    <!--NAVBAR-->
    <nav id="navBar">
        <div>
            <img src="GoodGums-images/GoodGums-logo-sm.png" alt="GoodGums Logo" />
        </div>
        <ul>
            <li><a href="index.aspx">Home</a></li>
            <li class="nav_Bar is-active"><a href="add.aspx">Add Record</a></li>
            <li><a href="invoice.aspx">Invoice</a></li>
            <li><a href="stocktake.aspx">Stocktake</a></li>
            <li><a href="chart.aspx">Chart</a></li>
        </ul>
        <div id="welcomeMsg">
            <asp:Label id="activeMsg" runat="server">You are currently active:</asp:Label>
            <asp:Label id="user" Text="" runat="server" />
        </div>
    </nav>

    <!--FORM CONTAINING PAGE CONTENT-->
    <form id="addCustomerOrder" runat="server"> 
        <h1>Add Records</h1>
        <div id="asideAdd1">
            <aside><img src="GoodGums-images/Plants/Acacia%20pycnantha/shutterstock_611904872_1.jpg" /></aside>
        </div>
        <div id="asideAdd2">
            <aside><img src="GoodGums-images/Plants/Angophora%20costata/shutterstock_1415738750_1.jpg" /></aside>
        </div>
        <div>
            <asp:Label class="addLbl" Text="ID: " runat="server"/>
            <asp:Label ID="lblId" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Label class="addLbl" ID="fullName" runat="server" Text="Full Name:"></asp:Label>
            <asp:TextBox ID="txtFullName" runat="server" CausesValidation="True" MaxLength="50"></asp:TextBox>
            
        </div>

        <div>
            <asp:Label class="addLbl" ID="email" runat="server" Text="Email Address:"></asp:Label>
            <asp:TextBox ID="txtEmail" TextMode="Email" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label class="addLbl" ID="product" runat="server" Text="Product:"></asp:Label>
            <asp:TextBox ID="txtProduct" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label class="addLbl" ID="quantity" runat="server" Text="Quantity:"></asp:Label>
            <asp:TextBox ID="txtQuantity" TextMode="Number" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label class="addLbl" ID="price" runat="server" Text="Price:"></asp:Label>
            <asp:TextBox ID="txtPrice" TextMode="Number" runat="server"></asp:TextBox>
        </div>
        
        <asp:Button CssClass="btnAdd" Text="Add Record" runat="server" OnClick="AddOrder_Click"/>
        <asp:Button CssClass="btnAdd" Text="Reset Form" runat="server" OnClick="Reset_Click"/>

        <!--VALIDATION-->
        <div id="addRequiredMsg">
            <asp:RequiredFieldValidator ControlToValidate="txtFullName" ID="txtFullNameValidator" runat="server" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtEmail" ID="txtEmailValidator" runat="server" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtProduct" ID="txtProductValidator" runat="server" ErrorMessage="Product Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtQuantity" ID="txtQuantityValidator" runat="server" ErrorMessage="Quantity Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ControlToValidate="txtPrice" ID="txtPriceValidator" runat="server" ErrorMessage="Price Required"></asp:RequiredFieldValidator>
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
