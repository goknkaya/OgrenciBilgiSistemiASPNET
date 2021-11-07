using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Grafikler : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-9BQMHRG\SQLEXPRESS;Initial Catalog=DbStaj;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        GRAFIK1();
        GRAFIK2();
        GRAFIK3();
        GRAFIK4();
    }

    public void GRAFIK1() //WebChart1' e ait kod: Her bir kişinin 2 numaralı ID' li dersinin sınav notlarını getirir.
    {
        WebChartControl1.Series["Notlar"].Points.Clear();
        con.Open();
        SqlCommand cmd = new SqlCommand("Execute GRAFIK1", con); //SQL' de oluşturduğumuz prosedürü burada çağırıyoruz.
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            WebChartControl1.Series["Notlar"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString())); //Veritabanından gelen ilk değer ve ikinci değer eklendi.
        }
        con.Close();
    }

    public void GRAFIK2() //WebChart2' ye ait kod: Her bir branştan kaç tane olduğunu verir.
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Execute GRAFIK2", con); //SQL' de oluşturduğumuz prosedürü burada çağırıyoruz.
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            WebChartControl2.Series["DersAd"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString())); //Veritabanından gelen ilk değer ve ikinci değer eklendi.
        }
        con.Close();
    }

    public void GRAFIK3() //WebChart3' e ait kod: Her bir cinsiyetten kaç tane olduğunu verir.
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Execute GRAFIK3", con); //SQL' de oluşturduğumuz prosedürü burada çağırıyoruz.
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            WebChartControl3.Series["Cinsiyet"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString())); //Veritabanından gelen ilk değer ve ikinci değer eklendi.
        }
        con.Close();
    }

    public void GRAFIK4() //WebChart4' e ait kod: Her bir dersten kaç tane olduğunu verir.
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Execute GRAFIK4", con); //SQL' de oluşturduğumuz prosedürü burada çağırıyoruz.
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            WebChartControl4.Series["Dersler"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString())); //Veritabanından gelen ilk değer ve ikinci değer eklendi.
        }
        con.Close();
    }
}