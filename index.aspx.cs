using System;
using System.IO;
using System.Xml.Serialization;

public partial class GoodGums:System.Web.UI.Page
{

    const string FILE = "GoodGumsXML.xml";
    String file = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, FILE);
    

    protected void Page_Load ()
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
        try {
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(PurchaseCollection));
            FileStream fileStream = new FileStream(file, FileMode.Open);
            PurchaseCollection purchaseList = (PurchaseCollection)xmlSerializer.Deserialize(fileStream);

            gridView.DataSource = purchaseList.purchases;
            gridView.DataBind();
            fileStream.Close();
        }
        catch (FileNotFoundException) {
            gridError.Text = "No File Found";
        }
        
    }
}