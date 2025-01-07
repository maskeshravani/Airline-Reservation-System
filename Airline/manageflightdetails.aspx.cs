using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Airline_manageflightdetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Airline_Hotel\App_Data\Airline.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Add_Flight_Details values('" + drpflightno.Text + "','" +drpcompanyname.Text+ "','" + drpfromcity.Text + "','" + drptocity.Text + "','" + txtdate.Text + "','" + drpdeparturetime.Text + "','" + drparrivaltime.Text + "'," + DropDownList1.Text + ","+DropDownList2.Text+","+DropDownList3.Text+",'" + txttravelduration.Text + "','" + txtairportname.Text + "'," + txtticketprice.Text + ",'" + txtdescription.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'>alert('Data saved successfully!!...')</script>");
        GridView1.DataBind();
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
       // txtflightno.Text = "";
       // drpcompanyname.Text = "";
        //drpfromcity.Text = "";
        //drptocity.Text = "";
        txtdate.Text = "";
        drparrivaltime.Text = "";
        //drpflighttypes.Text="";
       txttravelduration.Text="";
        txtairportname.Text = "";
        txtticketprice.Text = "";
        txtdescription.Text = "";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        txtdate.Text = GridView1.SelectedRow.Cells[5].Text;
        
        txttravelduration.Text = GridView1.SelectedRow.Cells[11].Text;
        txtairportname.Text = GridView1.SelectedRow.Cells[12].Text;
        txtticketprice.Text = GridView1.SelectedRow.Cells[13].Text;
        txtdescription.Text = GridView1.SelectedRow.Cells[14].Text;
        


    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Add_Flight_Details set CompanyName='" + drpcompanyname.Text + "',Start_place='" + drpfromcity.Text + "',Destination_place='" + drptocity.Text + "',Date='" + txtdate.Text + "',DepartureTime='" + drpdeparturetime.Text + "',ArrivalTime='" + drparrivaltime.Text + "',firstclassavialableseat=" + DropDownList1.Text + ",economyavialableseat="+DropDownList2.Text+",businessavialableseat="+DropDownList3.Text+",TravelDuration='" + txttravelduration.Text + "',AirportName='" + txtairportname.Text + "',Price=" + txtticketprice.Text + ",Description='" + txtdescription.Text + "' where Flight_no= '" + drpflightno.Text + "' ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script language='javascript'>alert('Data updated successfully!!...')</script>");
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Add_Flight_Details where Flight_no='" + drpflightno + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javascript'>alert('Deleted successfully!!...')</script>");
    
    }
}