using System;


public partial class GoodGums : System.Web.UI.Page
{
    protected void Page_Load()
    {
        if (!IsPostBack) { }

        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            user.Text = Session["user"].ToString();
        }

        txtFullName.Focus();
    }




    protected void Print_Click(object sender, EventArgs e)
    {
        Server.Transfer("print.aspx");
    }

}