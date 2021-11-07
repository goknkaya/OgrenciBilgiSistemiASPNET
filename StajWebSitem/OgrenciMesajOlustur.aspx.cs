using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciMesajOlustur : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TxtGonderen.Text = Session["OGRNUMARA"].ToString(); //Mesaj gönderecek olan öğrencinin numarası yazar.
    }

    protected void BtnGonder_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
        dt.MesajGonder(TxtGonderen.Text, TxtAlici.Text, TxtMesajBaslik.Text, TxtMesajIcerik.Value.ToString());
        Response.Redirect("OgrenciGidenMesajlar.aspx");

    }
}