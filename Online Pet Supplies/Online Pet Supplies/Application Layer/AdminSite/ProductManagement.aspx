<%-- page that allows administrators to update the products offered by the store --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/AdminSite/Admin.Master" AutoEventWireup="true" CodeBehind="ProductManagement.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.AdminSite.ProductManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ItemID">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
    </asp:GridView>


    <asp:Label ID="nameLabel" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="nameBox" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nameBox" CssClass="text-danger" ErrorMessage="You must enter a poduct name." >
    </asp:RequiredFieldValidator>

 <br />
     <asp:Label ID="PriceLabel" runat="server" Text="Price"></asp:Label>
    <asp:TextBox ID="priceBox" runat="server" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="priceBox" CssClass="text-danger" ErrorMessage="You must enter a postcode." >
    </asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="priceValidator" runat="server" ControlToValidate="priceBox" CssClass="text-danger" ValidationExpression="^[1-9]\d*$" ErrorMessage="Must be a number.">
    </asp:RegularExpressionValidator>



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
    
 <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="insert new item" />
    <br />
    <br />
</asp:Content>
