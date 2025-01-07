using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_CancelBooking : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Airline_Hotel\App_Data\Airline.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        string date = System.DateTime.Now.ToShortDateString();

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

        cn.Open();
        cmd.CommandText = "insert into Ticket_Cancelation values(" + txtpnrno.Text +")";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        //ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javaScript'>alert('Booking successfully!!')</script>");
        GridView1.DataBind();

        cn.Open();
        cmd.CommandText = "delete from Ticket_Reservation where PNR_no= "+txtpnrno.Text+" ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        //ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javaScript'>alert('Booking successfully!!')</script>");
        GridView1.DataBind();


        cn.Open();
        cmd.CommandText = "delete from Payment where Booking_id= " + txtpnrno.Text + " ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script language='javaScript'>alert('Booking Cancel successfully!!')</script>");
        GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtpnrno.Text = GridView1.SelectedRow.Cells[1].Text;
        txtemail.Text = GridView1.SelectedRow.Cells[2].Text;
       
    }
}