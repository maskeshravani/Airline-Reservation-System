using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Airline_Goods : System.Web.UI.Page
{
    SqlConnection cn= new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Airline_Hotel\App_Data\Airline.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd=new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtpassnumber.Text = "";
        txtgoodsname.Text = "";
        txtweight.Text = "";
        txtnameofcustomer.Text = "";
        txtdeliveryaddress.Text = "";
        txtreceiverphone.Text = "";
        txtreceiveremail.Text = "";
    }
protected void  btnsubmit_Click(object sender, EventArgs e)
{
     cn.Open();
        cmd.CommandText = "insert into Goods values(" +txtpassnumber.Text+ ",'"+txtgoodsname.Text+"',"+txtweight.Text+",'"+txtnameofcustomer.Text+"','"+txtdeliveryaddress.Text+"',"+txtreceiverphone.Text+",'"+txtreceiveremail.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'>alert('saved successfully!!...')</script>");
    
}
}