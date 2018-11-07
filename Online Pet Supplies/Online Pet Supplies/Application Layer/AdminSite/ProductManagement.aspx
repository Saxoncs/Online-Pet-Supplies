<%-- page that allows administrators to update the products offered by the store without needing to directly access the database --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/AdminSite/Admin.Master" AutoEventWireup="true" CodeBehind="ProductManagement.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.AdminSite.ProductManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ItemID">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
    </asp:GridView>
    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteItem" SelectMethod="GetItems" TypeName="Online_Pet_Supplies.Business_Layer.ItemBL" InsertMethod="InsertItem">
        <DeleteParameters>
            <asp:Parameter Name="ItemID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ItemID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="insert new item" />
    <br />
    <br />
</asp:Content>
