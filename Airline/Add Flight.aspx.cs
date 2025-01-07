using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Airline_Flight_Details : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Airline_Hotel\App_Data\Airline.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Flight_Details values('" + txtcompanyname.Text + "','" + txtflightid.Text + "','" + txtflightnumber.Text + "','" + txttotalcapacity.Text + "','" + txtcapacity.Text + "','" + txteconomyclass.Text + "','" + txtbuisnessclass.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'>alert('saved successfully!!...')</script>");
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Flight_Details set Company_Name='" + txtcompanyname.Text + "',Flight_Number='" + txtflightnumber.Text + "',Total_Capacity='" + txttotalcapacity.Text + "',First_Class_Capacity='" + txtcapacity.Text + "',Economy_Capacity='" + txteconomyclass.Text + "',Business_Capacity='" + txtbuisnessclass.Text + "' where Flight_ID='" + txtflightid.Text + "' ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "update", "<script language='javascript'>alert('Data updated successfully!!...')</script>");
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Flight_Details where Flight_Id='"+txtflightid.Text+"' ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'>alert('Deleted successfully!!...')</script>");

    }
    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select Count(Flight_ID) from Flight_Details";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtflightid.Text = n.ToString();
        cn.Close();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtcompanyname.Text = GridView1.SelectedRow.Cells[1].Text;
        txtflightid.Text = GridView1.SelectedRow.Cells[2].Text;
        
        txtflightnumber.Text = GridView1.SelectedRow.Cells[3].Text;
        txttotalcapacity.Text = GridView1.SelectedRow.Cells[4].Text;
        txtcapacity.Text = GridView1.SelectedRow.Cells[5].Text;
        txteconomyclass.Text = GridView1.SelectedRow.Cells[6].Text;
        txtbuisnessclass.Text = GridView1.SelectedRow.Cells[7].Text;
    }
}