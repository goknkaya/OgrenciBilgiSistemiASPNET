using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false) //Sayfanın sürekli olarak yeniden yüklenmesini engellemek için
        {
            DataSetTableAdapters.TBL_OGRETMENTableAdapter dt = new DataSetTableAdapters.TBL_OGRETMENTableAdapter();
            DropDownList1.DataSource = dt.OgretmenListesi(); //Dropdownlist'in kaynağı dt' de oluşturulan Öğretmen Listesi'dir.
            DropDownList1.DataTextField = "OGRTADSOYAD"; //Dropdownlist içerisine öğretmenin ad ve soyadını atıyor.
            DropDownList1.DataValueField = "OGRTID"; //Bir öğretmeni seçtiğimizde arkaplanda ilgili öğretmenin ID'sini alır.
            DropDownList1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
        //Textbox' dan, TextArea' dan ve DropDownList' ten gelen verileri DuyuruEkle dataseti ile ekliyor.
        dt.DuyuruEkle(TxtDuyuruBaslik.Text, TextArea1.Value.ToString(), Convert.ToInt32(DropDownList1.SelectedValue));
        Response.Redirect("DuyuruListesi.aspx"); //Duyuru eklendikten sonra DuyuruListesi.aspx sayfasına git.
    }
}