<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NewsletterSubscription.NewsletterSubscription" %>

<asp:Content ID="NavigationContent" ContentPlaceHolderID="navigation" runat="server">Anmelden</asp:Content>
<asp:Content ID="contentControl" ContentPlaceHolderID="content" runat="server">
    <link rel="stylesheet" runat="server" media="screen" href="login-styles.css" /> 
    <p>
        <asp:Literal ID="litInfo" runat="server" Text="Bitte geben Sie Ihre persönlichen Daten an:" ></asp:Literal>
    </p>
    <br />
    <asp:Label runat="server" CssClass="firstName">Vorname</asp:Label>
    &nbsp;&nbsp;
    <br />
    <asp:TextBox ID="txtFirstName" runat="server" OnTextChanged="txtFirstName_TextChanged" CssClass="txtFirstName"></asp:TextBox>
    <asp:RequiredFieldValidator id="requiredFieldValidator1" ControlToValidate="txtFirstName"
        ErrorMessage="Bitte füllen Sie dieses Feld aus"
        runat="server"/> 
    <br />
    <br />
    <asp:Label runat="server" CssClass="lastName">Nachname</asp:Label>
    &nbsp;&nbsp;
    <br />
    <asp:TextBox ID="txtLastName" runat="server" OnTextChanged="txtLastName_TextChanged" CssClass="txtLastName"></asp:TextBox>
        <asp:RequiredFieldValidator id="requiredFieldValidator2" ControlToValidate="txtLastName"
        ErrorMessage="Bitte füllen Sie dieses Feld aus" 
        runat="server"/>
    <br />
    <br />
    <asp:Label runat="server" CssClass="email">E-Mail</asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <br />
    <asp:TextBox ID="txtEmail" runat="server" CssClass="txtEmail"></asp:TextBox>
    <asp:RequiredFieldValidator id="requiredFieldValidator3" ControlToValidate="txtEmail"
        ErrorMessage="Bitte füllen Sie dieses Feld aus" 
        runat="server" Display="Dynamic"/>
    <asp:CustomValidator id="customValidator1" ControlToValidate="txtEmail"
        OnServerValidate="email_validator"
        ErrorMessage="Bitte geben Sie eine gültige E-Mail Adresse ein" runat="server" Display="Dynamic"/>
    <br />
    <br />
    <asp:Label runat="server" CssClass="lblBirthdate">Geburtsdatum</asp:Label>
    <br />
    <asp:TextBox ID="txtBirthdate" runat="server" CssClass="txtBirthdate"></asp:TextBox>
    <asp:RangeValidator ID="rangeBirthdate" runat="server" ControlToValidate="txtBirthdate" ErrorMessage="Bitte geben Sie ein gültiges Datum ein" MinimumValue="01.01.1900" MaximumValue="31.12.2021"  Type="Date" Display="Dynamic"></asp:RangeValidator>
    <asp:RequiredFieldValidator id="requiredFieldValidator6" ControlToValidate="txtBirthdate"
        ErrorMessage="Bitte füllen Sie dieses Feld aus" 
        runat="server"/>
    <br />
    <br />
    <asp:Label ID="lblClass" runat="server" Text="Klasse" CssClass="lblClass"></asp:Label>
    <br />
    <asp:TextBox ID="txtClass" runat="server" CssClass="txtClass"></asp:TextBox>
    <asp:RequiredFieldValidator id="requiredFieldValidator5" ControlToValidate="txtClass"
        ErrorMessage="Bitte füllen Sie diesses Feld aus" 
        runat="server"/>
    <br />
    <br />
    <asp:Label runat="server" CssClass="interests">Interessen</asp:Label>
    <asp:RadioButtonList ID="radioInterests" runat="server" CssClass="radioInterests">
        <asp:ListItem Value="Desktop Applications">Desktop-Applikationen</asp:ListItem>
        <asp:ListItem Value="Web-Applications">Web-Applikationen</asp:ListItem>
        <asp:ListItem Value="Mobile-Apps">Mobile-Apps</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator id="requiredFieldValidator4" ControlToValidate="radioInterests"
        ErrorMessage="Bitte wählen Sie eine der aufgelisteten Interessen" 
        runat="server"/>
    <br />
    <br />
    <asp:CheckBox ID="checkAGB" runat="server" Text="Ich akzeptiere die AGB" CssClass="checkBox" />&nbsp;
    <asp:CustomValidator id="customValidator2"
        OnServerValidate="checkBoxValidator"
        ErrorMessage="Sie müssen die Nutzungsbedingungen akzeptieren" runat="server" Display="Dynamic"/>

    <br />        
    <br />
    <br />
    
    <asp:Button type="submit" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Einreichen" CssClass="btnSubmit" />
    
</asp:Content>