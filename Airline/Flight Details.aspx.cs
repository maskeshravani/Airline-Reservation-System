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
    int n = 0;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["from"] = drpstart.Text;
        Session["to"] = drpend.Text;
        Session["class"] = drpclass.Text;
        Session["date"] = txtdepart.Text;

    }
    
    protected void btnsearchflight_Click(object sender, EventArgs e)
    {
        //cn.Open();
        //cmd.CommandText = "Select * from Add_Flight_Details where Start_place='" + drpstart.Text + "' or Destination_place='" + drpend.Text + "' or Flight_Types='" + drpclass.Text + "' or Date='" + txtdepart.Text + "'";
        //cmd.Connection = cn;
        //dt.Load(cmd.ExecuteReader());
        //GridView1.DataSource = dt;
        //cn.Close();

        Session["from"] = drpstart.Text;
        Session["to"] = drpend.Text;
        Session["class"] = drpclass.Text;
        Session["date"] = txtdepart.Text;
    }
    protected void drpstart_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}