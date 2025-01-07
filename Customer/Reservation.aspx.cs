using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

public partial class Customer_Reservation : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Airline_Hotel\App_Data\Airline.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    ReportDocument crpt = new ReportDocument();
    int filghtId;

    

    protected void Page_Load(object sender, EventArgs e)
    {
        CrystalReportViewer1.Visible = false;

        txtflightname.Text = Session["fid"].ToString();
        txtstartingplace.Text = Session["Start_place"].ToString();
        txtendingplace.Text = Session["Destination_place"].ToString();
        txtdateofjourney.Text = Session["Date"].ToString();
        txtticketprice.Text = Session["Price"].ToString();
        txtnumberofticket.Text = Session["no"].ToString();
        txtcustnm.Text = Session["User"].ToString();
        //  string res = Session["res"].ToString();


        int tprice = Convert.ToInt32(txtticketprice.Text);
        int nop = Convert.ToInt32(txtnumberofticket.Text);

        int total = tprice * nop;
        txttotalprice.Text = total.ToString();

        txtamount.Text = total.ToString();
        double net = total + (total * 0.12);


        txttotalamount.Text = net.ToString();

        cn.Open();
        cmd.CommandText = "select Count(PNR_no) from Ticket_Reservation";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n++;
        txtpnrno.Text = n.ToString();
        txtbookingid.Text = n.ToString();
        cn.Close();


        cn.Open();
        cmd.CommandText = "select Count(Payment_id) from Payment";
        cmd.Connection = cn;
        int id = Convert.ToInt32(cmd.ExecuteScalar());
        id++;
        txtpaymentid.Text = id.ToString();
        cn.Close();

        txtcustomername.Text = Session["user"].ToString();

        cn.Open();
        cmd.CommandText = "select Flight_ID from Flight_Details where Flight_Number='" + txtflightname.Text + "'";
        cmd.Connection = cn;
        filghtId = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
    }
    protected void btnbooknow_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Ticket_Reservation values(" + txtpnrno.Text + ",'" + txtstartingplace.Text + "','" + txtendingplace.Text + "'," + filghtId + ",'" + txtflightname.Text + "'," + txtticketprice.Text + ",'" + txtdateofjourney.Text + "'," + txtnumberofticket.Text + "," + txttotalprice.Text + ",'" + txtcustnm.Text + "'," + txtaadharno.Text + ")";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        //ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script language='javaScript'>alert('Enquiry submitted successfully!!')</script>");


        cn.Open();
        cmd.CommandText = "select firstclassavialableseat from Add_Flight_Details";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.ExecuteNonQuery();
        cn.Close();

        int tk = Convert.ToInt32(txtnumberofticket.Text);
        int tot = n - tk;

        cn.Open();
        cmd.CommandText = "update Add_Flight_Details set firstclassavialableseat=" + tot + " where Flight_no=" + txtpnrno.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();



        cn.Open();
        cmd.CommandText = "insert into Ticket_Reservation values(" + txtpnrno.Text + ",'" + txtstartingplace.Text + "','" + txtendingplace.Text + "'," + filghtId + ",'" + txtflightname.Text + "'," + txtticketprice.Text + ",'" + txtdateofjourney.Text + "'," + txtnumberofticket.Text + "," + txttotalprice.Text + ",'" + txtcustnm.Text + "'," + txtaadharno.Text + ")";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();





        cn.Open();
        cmd.CommandText = "insert into Payment values('" + txtcardno.Text + "','" + txtexpiration.Text + "'," + txtcvv.Text + "," + txtpaymentid.Text + "," + txtbookingid.Text + ",'" + txtcustnm.Text + "','" + txtpaymentdate.Text + "'," + txtamount.Text + "," + lblGst.Text + "," + txttotalamount.Text + ",@p1,'"+txtflightname.Text +"')";
        if (rdonline.Checked == true)
            cmd.Parameters.AddWithValue("@p1", rdonline.Text);
        else
            cmd.Parameters.AddWithValue("@p1", rdUPI.Text);
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        CrystalReportViewer1.Visible = false;
        ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script language='javaScript'>alert('Booking successfully!!')</script>");

    }

    protected void txtcustomername_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtcvv_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtamount_TextChanged(object sender, EventArgs e)
    {

    }
    protected void rdonline_CheckedChanged(object sender, EventArgs e)
    {
        if (rdonline.Checked == true)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
        else
        {
            Panel3.Visible = true;
            Panel2.Visible = false;
        }

    }
    protected void rdUPI_CheckedChanged(object sender, EventArgs e)
    {

        if (rdUPI.Checked == true)
        {

            Panel3.Visible = true;
            Panel2.Visible = false;
        }
        else
        {

            Panel2.Visible = true;
            Panel3.Visible = false;

        }
        txtcardno.Text = "0";
        txtcvv.Text = "0";
        txtexpiration.Text = "0";
        
    }
    protected void btnprint_Click(object sender, EventArgs e)
    {
     //   CrystalReportViewer1.Visible = true;
        cn.Open();
        int x = Convert.ToInt32(txtpaymentid.Text)-1;
        SqlDataAdapter da = new SqlDataAdapter("Select * from Billview where Payment_id = " + x + " ", cn);
        da.Fill(ds, "Billview");
        da.Fill(ds);
        crpt.Load(Server.MapPath(@"~\Report\BillReport.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Billview");
        crpt.Refresh();
        cn.Close();
        //Responce.Redirect(@"~\Report\BillReport.rpt");
    }
}


