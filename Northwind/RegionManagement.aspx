<%@ Page Title="Regionenverwaltung" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegionManagement.aspx.cs" Inherits="Northwind.RegionManagement" %>
<asp:Content ID="NavigationContent" ContentPlaceHolderID="navigation" runat="server">Regionen</asp:Content>
<asp:Content ID="ContentContent" ContentPlaceHolderID="content" runat="server">
    <link rel="stylesheet" runat="server" media="screen" href="region-management-styles.css" />

    <asp:TextBox ID="txtRegion" runat="server" CssClass="txtRegion"></asp:TextBox>
    <asp:Button ID="btnAdd" runat="server" Text="Hinzufügen" OnClick="btnAdd_Click" CssClass="btn-regions" />
    <asp:Button ID="btnDelete" runat="server" Text="Löschen" OnClick="btnDelete_Click" CssClass="btn-regions" />
    <asp:Button ID="btnBigSmall" runat="server" Text="Gross/Klein" OnClick="btnBigSmall_Click" CssClass="btn-regions" />
    <br />
    <asp:Label ID="lblNonExistent" runat="server"></asp:Label>
    <br />
    <br />
    <div class="table-container">
    <asp:GridView ID="RegionsGrid" runat="server" CssClass="table-region"></asp:GridView>

    </div>
</asp:Content>
