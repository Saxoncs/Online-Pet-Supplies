<%-- Purchase History Page --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="PurchaseHistory.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.PurchaseHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--the code behind file will get the user from the session and display their name if logged in if not will show a link to the login page --%>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="UserSesh" runat="server" Text=""></asp:Label> <br />
    
    <asp:Button ID="loginButton" runat="server" Text="Login to your account" Visible ="true" OnClick="Loginredirect" />
</asp:Content>
