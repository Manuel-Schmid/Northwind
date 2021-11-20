<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NewsletterSubscription.NewsletterSubscription" %>

<asp:Content ID="NavigationContent" ContentPlaceHolderID="navigation" runat="server">Anmelden</asp:Content>
<asp:Content ID="contentControl" ContentPlaceHolderID="content" runat="server">
    <link rel="stylesheet" runat="server" media="screen" href="login-styles.css" />
    <p>
        <asp:Literal ID="litInfo" runat="server" Text="Please enter your info:"></asp:Literal>
    </p>
    Firstname&nbsp;&nbsp;
    <asp:TextBox ID="txtFirstName" runat="server" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator id="requiredFieldValidator1" ControlToValidate="txtFirstName"
        ErrorMessage="Please fill out this field" 
        runat="server"/>
    <br />
    Lastname&nbsp;&nbsp;
    <asp:TextBox ID="txtLastName" runat="server" OnTextChanged="txtLastName_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator id="requiredFieldValidator2" ControlToValidate="txtLastName"
        ErrorMessage="Please fill out this field" 
        runat="server"/>
    <br />
    E-Mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator id="requiredFieldValidator3" ControlToValidate="txtEmail"
        ErrorMessage="Please fill out this field" 
        runat="server" Display="Dynamic"/>
    <asp:CustomValidator id="customValidator1" ControlToValidate="txtEmail"
        OnServerValidate="email_validator"
        ErrorMessage="Please enter a valid E-Mail address" runat="server" Display="Dynamic"/>
    <br />
    <br />
    Birthdate:
    <asp:Calendar ID="calBithdate" runat="server"></asp:Calendar>
    <asp:customvalidator id="dateCustVal" onservervalidate="DateCustVal_Validate" runat="server" 
        Display="Dynamic" 
        ErrorMessage="Please enter your birthdate"
        />
    <br />
    <br />
    Interests
    <asp:RadioButtonList ID="radioInterests" runat="server">
        <asp:ListItem Value="Desktop Applications">Desktop Applications</asp:ListItem>
        <asp:ListItem Value="Web-Applications">Web-Applications</asp:ListItem>
        <asp:ListItem Value="Mobile-Apps">Mobile-Apps</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator id="requiredFieldValidator4" ControlToValidate="radioInterests"
        ErrorMessage="Please choose one of the listed interests" 
        runat="server"/>
    <br />
    <br />
    <asp:CheckBox ID="checkAGB" runat="server" Text="I accept the TOS" />&nbsp;
    <asp:CustomValidator id="customValidator2"
        OnServerValidate="checkBoxValidator"
        ErrorMessage="You Must Accept our Terms of Service" runat="server" Display="Dynamic"/>
    <br />        
    <br />
    <br />
    <asp:Button type="submit" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />

</asp:Content>