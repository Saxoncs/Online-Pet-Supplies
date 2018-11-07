<%-- Catalogue page --%>
<%@ Page Title="Catalogue" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="Catalogue.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.Catalogue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" type="text/css" href="CSS/MainSite.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%-- A search box that will search the products when we have a database full of them  --%>

   <div>
           <span>Search For Product: </span>
           <asp:TextBox runat="server" ID="txtSearch" />
           <asp:Button runat="server" ID="btnSearchBar" Style="background-color: grey;" CssClass="btn btn-danger" Text="Search" OnClick="btnSearchBar_Click"  />
     </div>
    <br />

<%-- a gridview will replace the table once we get the sql data for products to be displayed on using the ProductsAdd class  --%>


<!-- table code modified but sourced from w3schools -->


<div style="text-align:right">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetItem" TypeName="Online_Pet_Supplies.Business_Layer.ItemBL">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" DefaultValue="1" Name="ID" PropertyName="Text" Type="Int16" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetItems" TypeName="Online_Pet_Supplies.Business_Layer.ItemBL"></asp:ObjectDataSource>
<asp:Button ID="Button1" runat="server" Text="Add selected items to cart" OnClick="Button1_Click"  />
</div>
















   <%-- search bar help https://www.codeproject.com/Questions/1208008/How-to-add-a-search-bar-on-ASP-NET-using-Cshar --%>
    </asp:Content>
