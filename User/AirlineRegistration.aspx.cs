using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_AirlineRegistration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Airline_Hotel\App_Data\Airline.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select Count(Company_ID) from Company_Registration";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtid.Text = n.ToString();
        cn.Close();

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtcompanyname.Text = "";
        txtemailid.Text = "";
        txtwebsite.Text = "";
        txtcontactnumber.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="insert into Company_Registration values(" + txtid.Text + ",'" + txtcompanyname.Text + "','" + txtemailid.Text + "','" + txtwebsite.Text + "'," + txtcontactnumber.Text + ",'" + txtusername.Text + "','" + txtpassword.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(),"Submit", "<script language='javascript'>alert('Registration successfully...')</script>");


    }
}