using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Istatistikler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();
        TextBox1.Text = "Toplam Öğrenci Sayısı: " + dt.Istatistik1(); //Select Count(*) From TBL_OGRENCI
        TextBox2.Text = "Toplam Öğretmen Sayısı: " + dt.Istatistik2(); //Select Count(*) From TBL_OGRETMEN
        TextBox3.Text = "Toplam Ders Sayısı: " + dt.Istatistik3(); //Select Count(*) From TBL_DERSLER

        //DERSLERDE EN BAŞARILI ÖĞRENCİLER

        TextBox4.Text = "Matematik Sınav1' de En Başarılı Öğrenci: " + dt.Istatistik4().ToString();
        /*
            SELECT OGRAD + ' ' + OGRSOYAD FROM TBL_NOTLAR
            INNER JOIN TBL_OGRENCI
            ON TBL_NOTLAR.OGRENCIID = TBL_OGRENCI.OGRID
            WHERE SINAV1 = (SELECT MAX(SINAV1) FROM TBL_NOTLAR where TBL_NOTLAR.DERSID = 2)
        */
        TextBox5.Text = "Fizik Sınav1' de En Başarılı Öğrenci: " + dt.Istatistik5().ToString();
        /*
            SELECT OGRAD + ' ' + OGRSOYAD FROM TBL_NOTLAR
            INNER JOIN TBL_OGRENCI
            ON TBL_NOTLAR.OGRENCIID = TBL_OGRENCI.OGRID
            WHERE SINAV1 = (SELECT MAX(SINAV1) FROM TBL_NOTLAR where TBL_NOTLAR.DERSID = 4)
        */
        TextBox6.Text = "Dil Anlatım Sınav1' de En Başarılı Öğrenci: " + dt.Istatistik6().ToString();
        /*
            SELECT OGRAD + ' ' + OGRSOYAD FROM TBL_NOTLAR
            INNER JOIN TBL_OGRENCI
            ON TBL_NOTLAR.OGRENCIID = TBL_OGRENCI.OGRID
            WHERE SINAV1 = (SELECT MAX(SINAV1) FROM TBL_NOTLAR where TBL_NOTLAR.DERSID = 1)
        */
        TextBox7.Text = "Edebiyat Sınav1' de En Başarılı Öğrenci: " + dt.Istatistik7().ToString();
        /*
            SELECT OGRAD + ' ' + OGRSOYAD FROM TBL_NOTLAR
            INNER JOIN TBL_OGRENCI
            ON TBL_NOTLAR.OGRENCIID = TBL_OGRENCI.OGRID
            WHERE SINAV1 = (SELECT MAX(SINAV1) FROM TBL_NOTLAR where TBL_NOTLAR.DERSID = 3)
        */

        //DERSLERİN ORTALAMALARI
        TextBox8.Text = "Matematik dersi 1.Sınav Ortalaması: " + dt.Istatistik8().ToString();
        TextBox9.Text = "Fizik dersi 1.Sınav Ortalaması: " + dt.Istatistik9().ToString();
        TextBox10.Text = "Edebiyat dersi 1.Sınav Ortalaması: " + dt.Istatistik10().ToString();

        //Matematik dersinden geçenlerin ve kalanların gösterimi
        TextBox11.Text = "Matematik Dersinden Geçenlerin Sayısı: " + dt.Istatistik11().ToString(); //SELECT COUNT(*) FROM TBL_NOTLAR WHERE DURUM = 1 and DERSID = 2
        TextBox12.Text = "Matematik Dersinden Kalanların Sayısı: " + dt.Istatistik12().ToString(); //SELECT COUNT(*) FROM TBL_NOTLAR WHERE DURUM = 0 and DERSID = 2


    }
}
