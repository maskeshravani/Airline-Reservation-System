using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Airline_Hotel\App_Data\Airline.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtmobileno.Text = "";
        txtopenion.Text = "";
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="insert into Feedback values('"+txtname.Text+"','"+txtemail.Text+"',"+txtmobileno.Text+",'"+DropDownList1.Text +"','"+txtopenion.Text+"')";
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(),"Submit","<Script language='javascript'>alert('Feedback Submiited Successfully!!')</Script>");
    }
}