using System;

public partial class GoodGums : System.Web.UI.Page
{
    protected void Page_Load()
    {
        if (!IsPostBack) { reorderLevel.Text = "10"; }

        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            user.Text = Session["user"].ToString();
        }

        text1.Focus();
    }

    protected void OrderDecrease_Click(object sender, EventArgs e)
    {
        int orderLevel = int.Parse(reorderLevel.Text);
        reorderLevel.Text = (orderLevel -= 10).ToString();
    }

    protected void OrderIncrease_Click(object sender, EventArgs e)
    {
        int orderLevel = int.Parse(reorderLevel.Text);
        reorderLevel.Text = (orderLevel += 10).ToString();
    }


    protected void Calculate_Click(object sender, EventArgs e)
    {
        int priceOne = int.Parse(price1.Text); ;
        int priceTwo = int.Parse(price2.Text);
        int priceThree = int.Parse(price3.Text);
        int quantityOne = int.Parse(quantity1.Text);
        int quantityTwo = int.Parse(quantity2.Text);
        int quantityThree = int.Parse(quantity3.Text);
        int orderLevel = int.Parse(reorderLevel.Text);

        reorderQuantity1.Text = (orderLevel - quantityOne).ToString();
        reorderQuantity2.Text = (orderLevel - quantityTwo).ToString();
        reorderQuantity3.Text = (orderLevel - quantityThree).ToString();

        int re1 = int.Parse(reorderQuantity1.Text);
        int re2 = int.Parse(reorderQuantity2.Text);
        int re3 = int.Parse(reorderQuantity3.Text);

        subtotal1.Text = (priceOne * re1).ToString();
        subtotal2.Text = (priceTwo * re2).ToString();
        subtotal3.Text = (priceThree * re3).ToString();

        int calc1 = int.Parse(subtotal1.Text);
        int calc2 = int.Parse(subtotal2.Text);
        int calc3 = int.Parse(subtotal3.Text);

        total.Text = "$" + (calc1 + calc2 + calc3).ToString();

    }
}
