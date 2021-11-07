<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersEkle.aspx.cs" Inherits="DersEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">
        <div class="form-group">

            <div>
                <asp:Label for="TxtDersAd" runat="server">Ders Adı:</asp:Label>
                <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

        </div>
        <asp:Button ID="BtnDersEkle" runat="server" NavigateUrl="~/DersEkle.aspx" Text="Ekle" CssClass="btn btn-info" OnClick="BtnDersEkle_Click" />
    </form>

</asp:Content>

