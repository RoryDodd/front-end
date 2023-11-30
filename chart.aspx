<%@ Page Language="C#" AutoEventWireup="true" Codefile="chart.aspx.cs" Inherits="GoodGums" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="GoodGumsStyle.css" rel="stylesheet" />
    <title>Good Gums Chart</title>  
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
            <li><a href="invoice.aspx">Invoice</a></li>
            <li><a href="stocktake.aspx">Stocktake</a></li>
            <li class="nav_Bar is-active"><a href="chart.aspx">Chart</a></li>
        </ul>
        <div id="welcomeMsg">
            <asp:Label id="activeMsg" runat="server">You are currently active:</asp:Label>
            <asp:Label id="user" Text="" runat="server" />
        </div>
    </nav>

    <!--FORM CONTAINING PGE CONTENT-->
    <form id="chartForm" runat="server"> 
        <div>
            <asp:Chart id="chart" Height="500px" Width="800px" runat="server">
                <Series>
                    <asp:Series Name="Yearly Earnings" ChartType="StackedBar">
                        <Points>
                            <asp:DataPoint AxisLabel="2017" YValues="25000" Color="DarkBlue"></asp:DataPoint>
                            <asp:DataPoint AxisLabel="2018" YValues="50000" Color="DarkBlue"></asp:DataPoint>
                            <asp:DataPoint AxisLabel="2019" YValues="38000" Color="DarkBlue"></asp:DataPoint>
                            <asp:DataPoint AxisLabel="2020" YValues="35000" Color="DarkBlue"></asp:DataPoint>
                            <asp:DataPoint AxisLabel="2021" YValues="45000" Color="DarkBlue"></asp:DataPoint>
                        </Points>
                    </asp:Series>
                </Series>
                <Titles>
                    <asp:Title IsDockedInsideChartArea="true" Text="Yearly Earnings" BackColor="Black" ForeColor="White"></asp:Title>
                </Titles>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea">
                        <AxisX Title="Year" TitleForeColor="Black" TitleFont="Microsoft Snas Serif, 12pt"></AxisX>
                        <AxisY Title="Amount $" TitleForeColor="Black" TitleFont="Microsoft Snas Serif, 12pt" ></AxisY>
                    </asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Docking="Bottom" ></asp:Legend>
                </Legends>
            </asp:Chart>
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
