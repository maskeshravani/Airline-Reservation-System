﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_MyBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Session["fid"] = txtusername.Text;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtpassword.Text = GridView1.SelectedRow.Cells[1].Text;
        txtusername.Text = GridView1.SelectedRow.Cells[2].Text;
    }
}