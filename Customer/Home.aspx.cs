using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["from"] = drpstart.Text;
        Session["to"] = drpend.Text;
        Session["class"] = drpclass.Text;
        Session["date"] = txtdepart.Text;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["fid"] = GridView1.SelectedRow.Cells[1].Text;
        Session["Start_place"] = GridView1.SelectedRow.Cells[3].Text;
        Session["Destination_place"] = GridView1.SelectedRow.Cells[4].Text;
        Session["Date"] = GridView1.SelectedRow.Cells[5].Text;
        Session["Price"] = GridView1.SelectedRow.Cells[13].Text;
        Session["no"] = DropDownList1.Text;


        //if (rdradio.Checked == true)
        //{
        //    Session["res"] = rdradio.Text;
        //}
        //else
        //{
        //    Session["res"] = rdroundtrip.Text;
        //}

        Response.Redirect("~/Customer/Reservation.aspx");

    }
    protected void rdradio_CheckedChanged(object sender, EventArgs e)
    {
        //if (rdradio.Checked == true)
        //{
        //   // lbldepart.Visible = false;
        //    //txtdepart.Visible = false;
        //    txtreturn.Visible = false;
        //}

    }
    protected void rdroundtrip_CheckedChanged(object sender, EventArgs e)
    {
        //if (rdroundtrip.Checked == true)
        //{
        //    //lbldepart.Visible = true;
        //    txtdepart.Visible = true;
        //    txtreturn.Visible = true;
        //}
    }
}