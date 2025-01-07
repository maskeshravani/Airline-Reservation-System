using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Enquiry : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Airline_Hotel\App_Data\Airline.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        cn.Open();
        cmd.CommandText = "insert into Enquiry values('" + txtname.Text + "','" + txtemail.Text + "'," + txtcontactno.Text + ",'" + txtsubject.Text + "','" + txtmessage.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script language='javaScript'>alert('Enquiry submitted successfully!!')</script>");

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text="";
        txtemail.Text = "";
        txtcontactno.Text="";
        txtsubject.Text = "";
        txtmessage.Text = "";

    }
}