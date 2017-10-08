﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="slnPresentacion.Proveedores" %>
<%@ Register Src="~/controles/MenuInterno.ascx" TagName="MenuInterno" TagPrefix="ucMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cabecera" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="menuInterno" runat="server">
    <ucMenu:MenuInterno ID="MenuInterno" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">
    <h1>Proveedores</h1>
    <section class="row text-center placeholders">
        <div class="col-6 col-sm-6 placeholder">
            <h4>Administraci&oacute;n de proveedores</h4>
        </div>
        <div class="col-4 col-sm-4 placeholder">
            <a class="w3-button w3-large w3-circle w3-xlarge w3-ripple w3-teal" style="z-index:0">+</a>
            <h4>Nueva</h4>
            <span class="text-muted">Agregar proveedor</span>
        </div>
    </section>
    <asp:GridView ID="gvProveedores" runat="server" EmptyDataText="No Existen Proveedores Registrados" CssClass="table table-striped"></asp:GridView>
    <asp:Label ID="lblMensaje" ForeColor="Red" Font-Bold="true" runat="server" Text=""></asp:Label>
</asp:Content>
