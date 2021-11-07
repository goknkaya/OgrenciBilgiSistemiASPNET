<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Grafikler.aspx.cs" Inherits="Grafikler" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<%@ Register assembly="DevExpress.XtraCharts.v21.1.Web, Version=21.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dx" %>

<%@ Register assembly="DevExpress.XtraCharts.v21.1, Version=21.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
        <table class="table table-bordered table-hover">
            <tr>
                <td>
                    <dx:WebChartControl ID="WebChartControl1" runat="server" Height="300px" Width="500px" AppearanceNameSerializable="Nature Colors" CrosshairEnabled="True" PaletteName="Nature Colors">
                        <DiagramSerializable>
                            <dx:XYDiagram>
                                <AxisX VisibleInPanesSerializable="-1">
                                </AxisX>
                                <AxisY VisibleInPanesSerializable="-1">
                                </AxisY>
                            </dx:XYDiagram>
                        </DiagramSerializable>
                        <SeriesSerializable>
                            <dx:Series Name="Notlar">
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
                <td>
                    <dx:WebChartControl ID="WebChartControl2" runat="server" Height="300px" Width="500px" AppearanceNameSerializable="Nature Colors" CrosshairEnabled="True" PaletteName="Nature Colors">
                        <SeriesSerializable>
                            <dx:Series LegendTextPattern="{A}" Name="DersAd">
                                <viewserializable>
                                    <dx:DoughnutSeriesView>
                                    </dx:DoughnutSeriesView>
                                </viewserializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
            </tr>
            <tr>
                <td>
                    <dx:WebChartControl ID="WebChartControl3" runat="server" Height="300px" Width="500px" CrosshairEnabled="True">
                        <DiagramSerializable>
                            <dx:SimpleDiagram3D RotationMatrixSerializable="1;0;0;0;0;0.5;-0.866025403784439;0;0;0.866025403784439;0.5;0;0;0;0;1">
                            </dx:SimpleDiagram3D>
                        </DiagramSerializable>
                        <SeriesSerializable>
                            <dx:Series LegendTextPattern="{A}" Name="Cinsiyet">
                                <viewserializable>
                                    <dx:Pie3DSeriesView>
                                    </dx:Pie3DSeriesView>
                                </viewserializable>
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
                <td>
                    <dx:WebChartControl ID="WebChartControl4" runat="server" Height="300px" Width="500px" CrosshairEnabled="True">
                        <DiagramSerializable>
                            <dx:XYDiagram>
                                <AxisX VisibleInPanesSerializable="-1">
                                </AxisX>
                                <AxisY VisibleInPanesSerializable="-1">
                                </AxisY>
                            </dx:XYDiagram>
                        </DiagramSerializable>
                        <SeriesSerializable>
                            <dx:Series Name="Dersler">
                            </dx:Series>
                        </SeriesSerializable>
                    </dx:WebChartControl>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

