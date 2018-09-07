<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Click to logout 
    <asp:Button ID="logOut" runat="server" Text="Logout" Clicked =" " OnClick="LogOut_Click" />

</asp:Content>
