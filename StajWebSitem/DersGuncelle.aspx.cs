using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersGuncelle : System.Web.UI.Page
{
    int dersID;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            dersID = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
            DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
            TxtDersID.Text = dersID.ToString();
            TxtDersAd.Text = dt.DersGetir(dersID)[0].DERSAD;
        }
    }

    protected void BtnDersGuncelle_Click(object sender, EventArgs e)
    {
        dersID = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
        DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
        dt.DersGuncelle(TxtDersAd.Text, Convert.ToInt32(TxtDersID.Text));
        Response.Redirect("DersListesi.aspx");
    }
}