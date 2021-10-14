<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="NewsletterSubscription.Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Literal ID="litInfo" runat="server" Text="Please confirm your Info:"></asp:Literal>
        </p>
        Firstname&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblFirstName" runat="server" Text="Label"></asp:Label>
        <br />
        Lastname&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLastName" runat="server" Text="Label"></asp:Label>
        <br />
        E-Mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
        <br />
        Birthdate&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblBirthdate" runat="server" Text="Label"></asp:Label>
        <br />
        Interest&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblInterest" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblCongrats" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
&nbsp;<asp:Button type="submit" ID="btnConfirm" runat="server" OnClick="btnConfirm_click" Text="Confirm" />
    </form>
</body>
</html>
