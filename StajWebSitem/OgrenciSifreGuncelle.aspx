<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciSifreGuncelle.aspx.cs" Inherits="OgrenciSifreGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

     <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Enabled="False">Numara: </asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Enabled="True">Şifre:</asp:TextBox>
            </div>
             <br />
            <div>
                <asp:TextBox ID="TxtSifreTekrar" runat="server" CssClass="form-control" Enabled="True">Şifre Tekrar:</asp:TextBox>
            </div>
        </div>
        <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="BtnGuncelle_Click"/>
    </form>

</asp:Content>

