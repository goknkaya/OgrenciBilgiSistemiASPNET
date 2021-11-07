<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciNotGoruntule.aspx.cs" Inherits="OgrenciNotGoruntule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="table table-bordered table-hover">
            <tr>
                <th scope="col">ÖĞRENCİ ID</th>
                <th scope="col">ÖĞRENCİ AD SOYAD</th>
                <th scope="col">DERS ADI</th>
                <th scope="col">SINAV 1</th>
                <th scope="col">SINAV 2</th>
                <th scope="col">SINAV 3</th>
                <th scope="col">ORTALAMA</th>
                <th scope="col">DURUM</th>
            </tr>
        <tbody>
            <asp:repeater ID = "Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                        <td><%#Eval("OGRENCIID")%></td>
                        <td><%#Eval("OGRENCIADSOYAD")%></td>
                        <td><%#Eval("DERSAD")%></td>
                        <td><%#Eval("SINAV1")%></td>
                        <td><%#Eval("SINAV2")%></td>
                        <td><%#Eval("SINAV3")%></td>
                        <td><%#Eval("ORTALAMA")%></td>
                        <td><%#Eval("DURUM")%></td>
                    </tr>
                </ItemTemplate>

            </asp:repeater>
        </tbody>
    </table>

</asp:Content>

