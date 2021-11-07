<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="OgrenciEkle.aspx.cs" Inherits="OgrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtOgrNumara" runat="server">Öğrenci Numarası:</asp:Label>
                <asp:TextBox ID="TxtOgrNumara" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtOgrAd" runat="server">Öğrenci Adı:</asp:Label>
                <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtOgrSoyad" runat="server">Öğrenci Soyadı:</asp:Label>
                <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtOgrTelefon" runat="server">Öğrenci Telefonu:</asp:Label>
                <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtOgrMail" runat="server">Öğrenci Mail Adresi:</asp:Label>
                <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtOgrSifre" runat="server">Öğrenci Şifresi:</asp:Label>
                <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtOgrFoto" runat="server">Öğrenci Fotoğraf Linki:</asp:Label>
                <asp:TextBox ID="TxtOgrFoto" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

        </div>

        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click"/>

    </form>

</asp:Content>

