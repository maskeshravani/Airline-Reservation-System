﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_CustomerMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["User"].ToString();

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
