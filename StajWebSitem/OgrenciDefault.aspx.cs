using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciDefault : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["OGRNUMARA"].ToString(); //Session kullanımı bu şekildedir. Aşağıdaki koda ihtiyaç kalmadı.

        //TextBox1.Text = Request.QueryString["OGRNUMARA"]; //LoginPanel' den gelen öğrenci numarasını textBox' a aldı.

        // Numarası taşınan öğrencilerin bilgilerini getirme

        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        TextBox2.Text = "Ad Soyad: " + dt.OgrenciBilgiGetir(TextBox1.Text)[0].OGRAD + " " + dt.OgrenciBilgiGetir(TextBox1.Text)[0].OGRSOYAD;
        TextBox3.Text = "Mail Adresi: " + dt.OgrenciBilgiGetir(TextBox1.Text)[0].OGRMAIL;
        TextBox4.Text = "Telefon Numarası: " + dt.OgrenciBilgiGetir(TextBox1.Text)[0].OGRTELEFON;
        TextBox5.Text = "Şifre: " + dt.OgrenciBilgiGetir(TextBox1.Text)[0].OGRSIFRE;
        TextBox6.Text = "Fotoğraf Linki: " + dt.OgrenciBilgiGetir(TextBox1.Text)[0].OGRFOTOGRAF;
    }

    protected void BtnSifreGuncelle_Click(object sender, EventArgs e)
    {
        Response.Redirect("OgrenciSifreGuncelle.aspx?OGRNUMARA="+TextBox1.Text); //Güncellenecek öğrencinin numarasını OgrenciGuncelle2.aspx' e gönderme
    }
}