<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruEkle.aspx.cs" Inherits="DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="DropDownList1" runat="server">Duyuruyu Oluşturan Öğretmen:</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                <br />
            </div>

            <div>
                <asp:Label for="TxtDuyuruBaslik" runat="server">Duyuru Başlığı:</asp:Label>
                <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>

            <div>
                <asp:Label for="TextArea1" runat="server">Duyuru İçeriği:</asp:Label>
                <textarea id="TextArea1" cols="20" rows="6" class="form-control" runat="server"></textarea>
                <br />
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="Button1_Click"/>
    </form>

</asp:Content>

