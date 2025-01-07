using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_payinvice : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Airline_Hotel\App_Data\Airline.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtcardnumber.Text = "";
        txtcvv.Text = "";
        txtexpiration.Text = "";
    }
    protected void btnpay_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Payment values('" + txtcardnumber.Text + "','" + txtexpiration.Text + "','" + txtcvv.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Payment Received!!...')</script>");

    }
}
