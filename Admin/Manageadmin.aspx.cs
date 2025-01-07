using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Manageadmin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Airline_Hotel\App_Data\Airline.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Admin values('" + txtadminname.Text + "'," + txtnewpassword.Text + ")";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'>alert('Data saved successfully!!...')</script>");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtadminname.Text = "";
        txtoldpassword.Text = "";
        txtnewpassword.Text = "";
        txtconfirmpassword.Text = "";
    }
    
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Admin where username='" + txtadminname.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'>alert('Deleted successfully!!...')</script>");
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Admin set password=" + txtnewpassword.Text + " where username='"+txtadminname.Text+"' ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'>alert('Data updated successfully!!...')</script>");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtadminname.Text = GridView1.SelectedRow.Cells[1].Text;
        txtoldpassword.Text = GridView1.SelectedRow.Cells[2].Text;
    }
}