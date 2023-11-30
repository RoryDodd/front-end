using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.IO;
using System.Linq;

public partial class GoodGums : System.Web.UI.Page
{
    
    const string FILE = "loginfo.txt";
    String file = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, FILE);


    protected void Page_Load()
    {
        if (!IsPostBack) { }
        Session["activate"] = false;

        txtId.Focus();
    }


    protected void BtnLogin_OnClick(object sender, EventArgs e)
    {
        string idTxt = txtId.Text;
        string passwordTxt = txtPassword.Text;
        string name;
        string pass;

        try
        {
            List<string> lines = File.ReadAllLines(file).ToList();

            foreach (string line in lines)
            {
                string[] strings = line.Split(':');

                name = strings[0];
                pass = strings[1];

                if (name.Equals(idTxt) && pass.Equals(passwordTxt))
                {
                    Session["user"] = name;

                    Response.Redirect("index.aspx");
                    break;
                }
                else
                {
                    loginMessage.Text = "Incorrect Cridentials!!";
                    txtId.Text = "";
                    txtPassword.Text = "";
                }

            }
        }
        catch (FileNotFoundException) {
            loginMessage.Text = "No login file found";
        }
    }

}