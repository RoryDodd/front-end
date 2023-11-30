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
         
    }

}