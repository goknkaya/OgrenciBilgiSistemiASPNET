﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotGuncelle.aspx.cs" Inherits="NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtDersAd" runat="server">Ders Adı:</asp:Label>
                <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>
            <div>
                <asp:Label for="TxtOgrID" runat="server">Öğrenci ID:</asp:Label>
                <asp:TextBox ID="TxtOgrID" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtOgrAdSoyad" runat="server">Öğrenci Adı Soyadı:</asp:Label>
                <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtSinav1" runat="server">Sınav 1:</asp:Label>
                <asp:TextBox ID="TxtSinav1" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtSinav2" runat="server">Sınav 2:</asp:Label>
                <asp:TextBox ID="TxtSinav2" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtSinav3" runat="server">Sınav 3:</asp:Label>
                <asp:TextBox ID="TxtSinav3" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtOrtalama" runat="server">Ortalama:</asp:Label>
                <asp:TextBox ID="TxtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtDurum" runat="server">Durum:</asp:Label>
                <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

        </div>

        <asp:Button ID="BtnHesapla" runat="server" Text="Hesapla" CssClass="btn btn-toolbar" OnClick="BtnHesapla_Click" />
        <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="BtnGuncelle_Click" />
    </form>

</asp:Content>

