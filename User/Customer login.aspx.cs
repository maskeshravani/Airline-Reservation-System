using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_userlogin : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Airline_Hotel\App_Data\Airline.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpassword.Text = "";
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select User_name,Password from Customer_Registration where User_name='" + txtusername.Text + "'and Password=" + txtpassword.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        string a = txtusername.Text;
        if (dt.Rows.Count > 0)
        {
            //ClientScript.RegisterStartupScript(Page.GetType(), "Login", "<script language='javascript'>alert('Login Successfully!!')</Script>");
            Session["User"] = txtusername.Text;
            Session["date"] = System.DateTime.Now.ToShortDateString();
            Response.Redirect("~/Customer/Home.aspx");

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<script language='javascript'>alert('incorrect username or password !!')</Script>");

        }
    }
}