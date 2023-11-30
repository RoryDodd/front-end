using System;
using System.Web.UI.WebControls;

public partial class GoodGums : System.Web.UI.Page
{
    protected void Page_Load()
    {
        if (!IsPostBack) { }

        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
        

        var txtName = PreviousPage.FindControl("txtFullname") as TextBox;
        FName.Text = "Customer: " + txtName.Text;
        date.Text = "Date Issued: " + DateTime.Now.ToShortDateString();
        var pntItem1 = PreviousPage.FindControl("invItem1") as TextBox;
        item1.Text = pntItem1.Text;
        var pntPrice1 = PreviousPage.FindControl("invPrice1") as TextBox;
        price1.Text = "$" + pntPrice1.Text;
        var pntQuantity1 = PreviousPage.FindControl("invQuantity1") as TextBox;
        quantity1.Text = pntQuantity1.Text;
        var total1 = int.Parse(pntPrice1.Text) * int.Parse(pntQuantity1.Text);
        subtotal1.Text = "$" + total1.ToString();

        var pntItem2 = PreviousPage.FindControl("invItem2") as TextBox;
        item2.Text = pntItem2.Text;
        var pntPrice2 = PreviousPage.FindControl("invPrice2") as TextBox;
        price2.Text = "$" + pntPrice2.Text;
        var pntQuantity2 = PreviousPage.FindControl("invQuantity2") as TextBox;
        quantity2.Text = pntQuantity2.Text;
        var total2 = int.Parse(pntPrice2.Text) * int.Parse(pntQuantity2.Text);
        subtotal2.Text = "$" + total2.ToString();

        var pntItem3 = PreviousPage.FindControl("invItem3") as TextBox;
        item3.Text = pntItem3.Text;
        var pntPrice3 = PreviousPage.FindControl("invPrice3") as TextBox;
        price3.Text = "$" + pntPrice3.Text;
        var pntQuantity3 = PreviousPage.FindControl("invQuantity3") as TextBox;
        quantity3.Text = pntQuantity3.Text;
        var total3 = int.Parse(pntPrice3.Text) * int.Parse(pntQuantity3.Text);
        subtotal3.Text = "$" + total3.ToString();

        var total = total1 + total2 + total3;
        pntTotal.Text = "$" + total.ToString();

        duePeriod.Text = "Total amount is due in 14 days.";
        dueDate.Text = "Due Date: " + DateTime.Now.AddDays(14).ToShortDateString();
    }


}