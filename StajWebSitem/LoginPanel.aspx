<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPanel.aspx.cs" Inherits="LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

    <title></title>

    <style type="text/css">
        .auto-style1 {
            height: 936px;
        }
        .auto-style2 {
            text-align: center;
            color: #FFFFFF;
        }
        .newStyle1 {
            font-family: "Segoe Script";
        }
        .auto-style3 {
            color: #FFFFFF;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="auto-style1" style="background-image: url('wallpaper.jpg')">
        <div style="width: 700px; margin: auto">

            <br />

            <h2 class="auto-style2"><span class="newStyle1">StajWebSitem Giriş Ekranı</span></h2>

            <br />
            <br />
            <br />
            <div style="margin: auto; text-align: center;">
                <asp:Image ID="Image1" runat="server" Height="256px" Width="256px" ImageUrl="~/logingif.gif" />
            </div>
            <br />
            <br />
            <br />

            <div>
                <strong>
                <asp:Label for="TxtNumara" runat="server" CssClass="auto-style3">Kullanıcı Adı:</asp:Label>
                </strong>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <strong>
                <asp:Label for="TxtSifre" runat="server" CssClass="auto-style3">Şifre:</asp:Label>
                </strong>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <br />

            <asp:Button ID="BtnGirisYap" runat="server" Text="Öğrenci Girişi" CssClass="btn btn-warning" Width="700px" OnClick="BtnGirisYap_Click" />

            <br />
            <br />

            <div style="margin: auto;">

                <asp:Button ID="BtnOgretmenGirisi" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-danger" Width="700px" OnClick="BtnOgretmenGirisi_Click" />
            </div>

        </div>
    </form>
</body>
</html>
