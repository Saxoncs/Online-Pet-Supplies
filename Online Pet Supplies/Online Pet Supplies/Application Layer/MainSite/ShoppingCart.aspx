<%-- Shopping Cart Page --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- Simple button to show the process of using the shopping cart after they have been added from either the product page or the catalogue page  --%>
    
    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="name" DataValueField="price"></asp:ListBox>
    
    
    
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllItems" TypeName="Online_Pet_Supplies.DataAccessLayer.Item"></asp:ObjectDataSource>
    
    
    
    <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="PostagePage"  />
</asp:Content>
