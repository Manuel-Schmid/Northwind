<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegionManagement.aspx.cs" Inherits="Northwind.RegionManagement" %>
<asp:Content ID="NavigationContent" ContentPlaceHolderID="navigation" runat="server">Regionen</asp:Content>
<asp:Content ID="ContentContent" ContentPlaceHolderID="content" runat="server">
    <link rel="stylesheet" runat="server" media="screen" href="region-management-styles.css" />

    <asp:TextBox ID="txtRegion" runat="server"></asp:TextBox>
    <asp:Button ID="btnAdd" runat="server" Text="Hinzufügen" />
    <asp:Button ID="btnDelete" runat="server" Text="Löschen" />
    <asp:Button ID="btnBigSmall" runat="server" Text="Gross/Klein" />
    <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" Text="Anzeigen" />
    <br />
    <br />
    <br />
    <asp:GridView ID="RegionsGrid" runat="server" ></asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
