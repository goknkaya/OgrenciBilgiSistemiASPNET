<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciMesajOlustur.aspx.cs" Inherits="OgrenciMesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtGonderen" runat="server">Gönderen:</asp:Label>
                <asp:TextBox ID="TxtGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtAlici" runat="server">Alıcı:</asp:Label>
                <asp:TextBox ID="TxtAlici" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtMesajBaslik" runat="server">Mesaj Başlığı:</asp:Label>
                <asp:TextBox ID="TxtMesajBaslik" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TxtMesajIcerik" runat="server">Mesaj İçeriği:</asp:Label>
                <textarea id="TxtMesajIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
                <br />
            </div>
        </div>
        <asp:Button ID="BtnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="BtnGonder_Click"/>
    </form>

</asp:Content>

