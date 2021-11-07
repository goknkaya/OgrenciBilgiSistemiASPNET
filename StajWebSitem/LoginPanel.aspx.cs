using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LoginPanel : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-9BQMHRG\SQLEXPRESS;Initial Catalog=DbStaj;Integrated Security=True");

    protected void BtnGirisYap_Click(object sender, EventArgs e) //Öğrenciler için giriş işlemleri
    {
        //Öğrenci numarası TxtNumara' ya eşit olan ve Öğrenci şifresi TxtSifre' ye eşit olan kişileri OgrenciDefault.aspx sayfasına yönlendirme
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from TBL_OGRENCI WHERE OGRNUMARA = @p1 and OGRSIFRE = @p2", con);
        cmd.Parameters.AddWithValue("@p1", TxtNumara.Text);
        cmd.Parameters.AddWithValue("@p2", TxtSifre.Text);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            //Session kullanımı aşağıdaki gibidir. 28 numaralı satırdaki koda gerek kalmadı.
            Session.Add("OGRNUMARA",TxtNumara.Text);
            Response.Redirect("OgrenciDefault.aspx");
            //Response.Redirect("OgrenciDefault.aspx?OGRNUMARA=" + TxtNumara.Text); //TxtNumara' dan gelen değeri taşır
        }
        else
        {
            TxtSifre.Text = "Hatalı Şifre";
        }

        con.Close();


    }

    protected void BtnOgretmenGirisi_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from TBL_OGRETMEN WHERE OGRTNUMARA = @p1 and OGRTSIFRE = @p2", con);
        cmd.Parameters.AddWithValue("@p1", TxtNumara.Text);
        cmd.Parameters.AddWithValue("@p2", TxtSifre.Text);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            //Session kullanımı aşağıdaki gibidir. 28 numaralı satırdaki koda gerek kalmadı.
            Session.Add("OGRTNUMARA", TxtNumara.Text);
            Response.Redirect("Default.aspx");
            //Response.Redirect("OgrenciDefault.aspx?OGRNUMARA=" + TxtNumara.Text); //TxtNumara' dan gelen değeri taşır
        }
        else
        {
            TxtSifre.Text = "Hatalı Şifre";
        }

        con.Close();
    }
}