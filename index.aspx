<%@ Page Language="C#" AutoEventWireup="true" Codefile="index.aspx.cs" Inherits="GoodGums"%>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="GoodGumsStyle.css" rel="stylesheet" />
    <title>Good Gums Home</title>
</head>
<body>

    <!--NAVBAR-->
    <nav id="navBar">
        <div>
            <img src="GoodGums-images/GoodGums-logo-sm.png" alt="Good Gums Logo" />
        </div>
        <ul>
            <li class="nav_Bar is-active"><a href="index.aspx">Home</a></li>
            <li><a href="add.aspx">Add Record</a></li>
            <li><a href="invoice.aspx">Invoice</a></li>
            <li><a href="stocktake.aspx">Stocktake</a></li>
            <li><a href="chart.aspx">Chart</a></li>
        </ul>
        <div id="welcomeMsg">
            <asp:Label class="" id="activeMsg" runat="server">You are currently active:</asp:Label>
            <asp:Label id="user" Text="" runat="server" />
        </div>
    </nav>
    
    <!--FORM GRID BINDING IN C# CODE AND APP_CODE FOLDER-->
    <form method="post" runat="server">
        <h1>HOME</h1>
        <h3>Current Orders</h3>
        <div>
            <asp:GridView ID="gridView" runat="server"></asp:GridView>
        </div>
        <div>
            <asp:Label id="gridError" runat="server"></asp:Label>
        </div>
    </form>
    <div id="asideIndex1">
        <aside><img src="GoodGums-images/Plants/Telopea%20speciosissima/shutterstock_639385780_1.jpg" /></aside>
    </div>
    <div id="asideIndex2">
        <aside><img src="GoodGums-images/Plants/Hardenbergia%20violacea/shutterstock_1791808445_1.jpg" /></aside>
    </div>
    <!--FOOTER-->
    <footer id="footer">
        <label>Good Gums Application</label>
        <div id="divFooter1">
            <img id="footImg1" src="GoodGums-images/twitterlogo.png" alt="Twitter Logo" />
            <img id="footImg2" src="GoodGums-images/instagramlogo.png" alt="Intagram Logo" />
            <img id="footImg3" src="GoodGums-images/facebooklogo.png" alt="Facebook Logo" />
        </div>
        <div id="divFooter2">
            <img id="footImg4" src="GoodGums-images/HTML_Validation_logo.png" alt="W3C HTML" />
            <img id="footImg5" src="GoodGums-images/CSS_Validation_logo.png" alt="W3C CSS" />
        </div>
    </footer>

</body>
</html>