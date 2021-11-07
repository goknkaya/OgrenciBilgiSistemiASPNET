using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciNotGoruntule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
        Repeater1.DataSource = dt.OgrenciNotGoruntule(Session["OGRNUMARA"].ToString()); // Parantez içerisindeki numaraya sahip olan öğrencinin notu
        Repeater1.DataBind();

    }
}