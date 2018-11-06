<%-- Shopping Cart Page --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- Simple button to show the process of using the shopping cart after they have been added from either the product page or the catalogue page  --%>
    
    
    
    <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="PostagePage"  />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
    </asp:GridView>
    </asp:Content>
