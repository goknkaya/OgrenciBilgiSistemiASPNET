﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersSil : System.Web.UI.Page
{
    int dersID;
    protected void Page_Load(object sender, EventArgs e)
    {
        dersID = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
        DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
        dt.DersSil(dersID);
        Response.Redirect("DersListesi.aspx");
    }
}