<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NewsletterSubscription.NewsletterSubscription" %>

<asp:Content ID="NavigationContent" ContentPlaceHolderID="navigation" runat="server">Anmelden</asp:Content>
<asp:Content ID="contentControl" ContentPlaceHolderID="content" runat="server">
    <link rel="stylesheet" runat="server" media="screen" href="login-styles.css" />
    <p>
        <asp:Literal ID="litInfo" runat="server" Text="Bitte geben Sie Ihre persönlichen Daten an:"></asp:Literal>
    </p>
    Vorname&nbsp;&nbsp;
    <asp:TextBox ID="txtFirstName" runat="server" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator id="requiredFieldValidator1" ControlToValidate="txtFirstName"
        ErrorMessage="Bitte füllen Sie dieses Feld aus" 
        runat="server"/>
    <br />
    Nachname&nbsp;&nbsp;
    <asp:TextBox ID="txtLastName" runat="server" OnTextChanged="txtLastName_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator id="requiredFieldValidator2" ControlToValidate="txtLastName"
        ErrorMessage="Bitte füllen Sie dieses Feld aus" 
        runat="server"/>
    <br />
    E-Mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator id="requiredFieldValidator3" ControlToValidate="txtEmail"
        ErrorMessage="Bitte füllen Sie dieses Feld aus" 
        runat="server" Display="Dynamic"/>
    <asp:CustomValidator id="customValidator1" ControlToValidate="txtEmail"
        OnServerValidate="email_validator"
        ErrorMessage="Bitte geben Sie eine gültige E-Mail Adresse ein" runat="server" Display="Dynamic"/>
    <br />
    <br />
    Geburtsdatum:
    <asp:Calendar ID="calBithdate" runat="server"></asp:Calendar>
    <asp:customvalidator id="dateCustVal" onservervalidate="DateCustVal_Validate" runat="server" 
        Display="Dynamic" 
        ErrorMessage="Bitte geben Sie Ihr Geburtsdatum an"
        />
    <br />
    <br />
    Interessen
    <asp:RadioButtonList ID="radioInterests" runat="server">
        <asp:ListItem Value="Desktop Applications">Desktop-Applikationen</asp:ListItem>
        <asp:ListItem Value="Web-Applications">Web-Applikationen</asp:ListItem>
        <asp:ListItem Value="Mobile-Apps">Mobile-Apps</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator id="requiredFieldValidator4" ControlToValidate="radioInterests"
        ErrorMessage="Bitte wählen Sie eine der aufgelisteten Interessen" 
        runat="server"/>
    <br />
    <br />
    <asp:CheckBox ID="checkAGB" runat="server" Text="Ich akzeptiere die AGB" />&nbsp;
    <asp:CustomValidator id="customValidator2"
        OnServerValidate="checkBoxValidator"
        ErrorMessage="Sie müssen die Nutzungsbedingungen akzeptieren" runat="server" Display="Dynamic"/>
    <br />        
    <br />
    <br />
    <asp:Button type="submit" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Einreichen" />

</asp:Content>