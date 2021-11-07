using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciSifreGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Güncellenecek olan öğrencinin bilgileri
        if (Page.IsPostBack == false)
        {
            TxtNumara.Text = Request.QueryString["OGRNUMARA"]; //OgrenciDefault.aspx' den gelen Öğrenci numarası
        }
    }

    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();

        if (TxtSifre.Text == TxtSifreTekrar.Text) //Eğer iki şifre birbirini tutmuyorsa şifre değişimi yapma
        {
            dt.OgrenciSifreGuncelle(TxtSifre.Text, TxtNumara.Text);
            Response.Redirect("OgrenciDefault.aspx?OGRNUMARA=" + TxtNumara.Text);
        }
        else
        {
            TxtSifre.Text = "Şifreler eşleşmedi.";
            TxtSifreTekrar.Text = "";
        }


    }
}