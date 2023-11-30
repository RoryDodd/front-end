<%@ Page Language="C#" AutoEventWireup="true" Codefile="login.aspx.cs" Inherits="GoodGums"%>


<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="GoodGumsStyle.css" rel="stylesheet" />
    <title>Good Gums Login</title>
</head>
<body id="loginPage">

    <!--NAVBAR-->
    <nav id="navBar">
        <div>
            <img src="GoodGums-images/GoodGums-logo-sm.png" alt="GoodGums Logo" />
        </div>
    </nav>

    <!--FORM CONTAINING PAGE CONTENT-->
    <form id="loginForm" method="post" runat="server">
        <h1>Welcome</h1>
        <aside id="aside1"><img src="GoodGums-images/Plants/Boronia%20serrulata/shutterstock_1185578461_1.jpg" alt="Pink Flowers"/></aside>
        <aside id="msg">
            <p>Welcome to the Good Gums Application! Built for your daily business needs!</p>
        </aside>

        <!--LOGIN VALIDATION IN C# CODE-->
        <div>
            <asp:Label CssClass="lblLogin" id="lblId" Text="ID:-" runat="server" />
            <asp:TextBox id="txtId" runat="server" />
        </div>
        <div>
            <asp:Label CssClass="lblLogin" id="lblPassword" Text="Password:-" runat="server" />
            <asp:TextBox id="txtPassword" runat="server" Type="password"/>
        </div>

        <asp:Button id="btnLogin" Text="Submit" runat="server" OnClick="BtnLogin_OnClick" />
        <br />
    
        <asp:Label id="loginMessage" Text="" runat="server" />

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