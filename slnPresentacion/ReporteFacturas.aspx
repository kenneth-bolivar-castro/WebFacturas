﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="ReporteFacturas.aspx.cs" Inherits="slnPresentacion.ReporteFacturas" %>


<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">
    <h1>Reporte por Facturas</h1>
    <section class="row text-center placeholders">
        <div class="col-6 col-sm-6 placeholder">
            <h4>Administraci&oacute;n de Reporte por Facturas</h4>
        </div>
        <div class="col-4 col-sm-4 placeholder">
            <h4>Filtro</h4>
            <div>

<%--                <asp:DropDownList ID="ddlReportFacturas" runat="server" OnSelectedIndexChanged="ddlReportFacturas_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>--%>

            </div>
            <div>

                <asp:TextBox ID="txtFiltro" runat="server" ></asp:TextBox>
                <asp:Button ID="txtFiltrar" runat="server" OnClick="Filtrar_Click" Text="Filtrar" />


            </div>


        </div>
    </section> 
    <asp:GridView ID="GridView1" runat="server" 
        EmptyDataText="No Existen Productos En Dado Departameto" 
        BackColor="White" 
        BorderColor="#999999" 
        BorderStyle="None" 
        BorderWidth="1px" 
        CellPadding="3" 
        Font-Size="Large" 
        GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:Label ID="lblMensaje" ForeColor="Red" Font-Bold="true" runat="server" Text=""></asp:Label>
    <div>

    </div>


</asp:Content>