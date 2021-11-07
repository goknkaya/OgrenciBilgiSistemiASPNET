<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Galeri.aspx.cs" Inherits="Galeri" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">



    <form id="form1" runat="server">
        <dx:ASPxImageGallery ID="ASPxImageGallery1" runat="server" DataSourceID="SqlDataSource1" ImageUrlField="OgrFotograf" Theme="Material">
            <SettingsFolder ImageCacheFolder="~/Thumb/" />
            
            <SettingsTableLayout RowsPerPage="2" />
        </dx:ASPxImageGallery>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbStajConnectionString %>" SelectCommand="SELECT [OGRFOTOGRAF] FROM [TBL_OGRENCI]"></asp:SqlDataSource>

    </form>



</asp:Content>

