<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="Catalogue.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.Catalogue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1"></asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OnSelecting="ObjectDataSource1_Selecting"></asp:ObjectDataSource>

</asp:Content>
