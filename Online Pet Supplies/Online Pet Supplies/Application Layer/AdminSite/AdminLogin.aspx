<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/AdminSite/Admin.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.AdminSite.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summary text-danger" HeaderText="Please correct these entries:" />

    <h2>Please enter your administrator details to login to the Online Pet Supplies website administration site.</h2>

    <br />Administrator Username<br/>
    <asp:TextBox ID="txtAdminLoginUserName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator0" runat="server" ControlToValidate="txtAdminLoginUserName" CssClass="text-danger" ErrorMessage="You must enter a registered username." >
    </asp:RequiredFieldValidator>

    <br/>Password<br/>
    <asp:TextBox ID="txtAdminLoginPassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdminLoginPassword" CssClass="text-danger" ErrorMessage="You must enter your password." >
    </asp:RequiredFieldValidator>

    <br/><br />
    <asp:Button ID="btnSubmitCustomerLogin" runat="server" Text="Login" />

</asp:Content>
