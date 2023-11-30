using System;
using System.IO;
using System.Xml;

public partial class GoodGums : System.Web.UI.Page{

    const string FILE = "GoodGumsXML.xml";
    String file = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, FILE);

    protected void Page_Load()
    {
        if (!IsPostBack) {
            
        }

        txtFullName.Focus();

        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
           user.Text = Session["user"].ToString();
        }

        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(file);

        XmlNode root = xmlDoc.DocumentElement;
        int count = xmlDoc.DocumentElement.FirstChild.ChildNodes.Count;
        count++;
        lblId.Text = count.ToString();

        xmlDoc.Save(file);

    }

    protected void AddOrder_Click(object sender, EventArgs e)
    {
        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(file);
        
        XmlNode root = xmlDoc.DocumentElement;
        XmlNode purchase = xmlDoc.CreateElement("Purchase");
        XmlNode Id = xmlDoc.CreateElement("id");
        XmlNode FullName = xmlDoc.CreateElement("fullName");
        XmlNode EmailAddress = xmlDoc.CreateElement("emailAddress");
        XmlNode ProductName = xmlDoc.CreateElement("productname");
        XmlNode UnitPrice = xmlDoc.CreateElement("unitprice");
        XmlNode Quantity = xmlDoc.CreateElement("quantity");

        Id.InnerText = lblId.Text;
        FullName.InnerText = txtFullName.Text;
        EmailAddress.InnerText = txtEmail.Text;
        ProductName.InnerText = txtProduct.Text;
        UnitPrice.InnerText = txtPrice.Text;
        Quantity.InnerText = txtQuantity.Text;

        purchase.AppendChild(Id);
        purchase.AppendChild(FullName);
        purchase.AppendChild(EmailAddress);
        purchase.AppendChild(ProductName);
        purchase.AppendChild(UnitPrice);
        purchase.AppendChild(Quantity);

        root.FirstChild.AppendChild(purchase);

        xmlDoc.Save(file);
       
    }

    protected void Reset_Click(object sender, EventArgs e)
    {
        txtFullName.Text = "";
        txtEmail.Text = "";
        txtProduct.Text = "";
        txtQuantity.Text = "";
        txtPrice.Text = "";
    }
}
