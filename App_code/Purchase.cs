using System;

public class Purchase
{

    public Purchase()
    {
        this.id = "";
        this.fullName = "";
        this.emailAddress = "";
        this.productname = "";
        this.unitprice = "";
        this.quantity = "";
    }

    public Purchase(string id, string fullName, string email, string productname, string unitprice, string quantity)
    {
        this.id = id;
        this.fullName = fullName;
        this.emailAddress = email;
        this.productname = productname;
        this.unitprice = unitprice;
        this.quantity = quantity;
    }


    public string id { get; set; }
    public string fullName { get; set; }
    public string emailAddress { get; set; }
    public string productname { get; set; }
    public string unitprice { get; set; }
    public string quantity { get; set; }
}
