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
           <asp:Button runat="server" ID="btnSearchBar" Style="background-color: grey;" CssClass="btn btn-danger" Text="Search"  />
     </div>
    <br />

<%-- a gridview will replace the table once we get the sql data for products to be displayed on using the ProductsAdd class  --%>


  <table>
  <tr>
    <th> </th>
    <th>Name</th>
    <th>Description</th>
    <th>Price</th>
    <th>Add to Cart</th>
  </tr>
  <tr>
               
    <td><img src =" images/pet_image0005.jpg" style="max-width: 25%; height: auto;" alt="Catalogue image"  /></td>      
    <td>Dog food</td>
    <td>Food fit for dogs of all shapes and sizes</td>
    <td>$19.99</td>
    <td> <asp:CheckBox ID="CheckBox1" runat="server" />  </td>
      

  </tr>
  <tr>
     <td><img src =" images/pet_image0010.jpg" style="max-width: 25%; height: auto;" alt="cat food image"  /></td>   
    <td>Cat food</td>
    <td>Best cat food you will ever find</td>
    <td>$17.99</td>
    <td> <asp:CheckBox ID="CheckBox2" runat="server" />  </td>
  </tr>
  <tr>
      
     <td><img src =" images/pet_image0011.jpg" style="max-width: 25%; height: auto;" alt="horse food image"  /></td>  
    <td>Horse food</td>
    <td>All you will need to keep your good old harry the horse alive</td>
    <td>$99.99</td>
    <td> <asp:CheckBox ID="CheckBox3" runat="server" />  </td>
  </tr>
  <tr>
     <td><img src =" images/pet_image0007.jpg" style="max-width: 25%; height: auto;" alt="cat toy image"  /></td>  
    <td>Cat Toy</td>
    <td>Will keep any cat entertained for hours </td>
    <td>$9.99</td>
    <td> <asp:CheckBox ID="CheckBox4" runat="server" />  </td>
  </tr>
  <tr>
     <td><img src =" images/pet_image0001.jpg" style="max-width: 25%; height: auto;" alt="dog toy image"  /></td>  
    <td>Dog toy</td>
    <td>This dog toy is desgined specifically for lazy dog owners does all the work for you</td>
    <td>$14.99</td>
    <td> <asp:CheckBox ID="CheckBox5" runat="server" />  </td>
  </tr>
  <tr>
     <td><img src =" images/pet_image0009.png" style="max-width: 25%; height: auto;" alt="horse shoe that isnt totally a squid"  /></td>  
    <td>Horse shoe things</td>
    <td>Those things that go on the horses feet</td>
    <td>$200</td>
    <td> <asp:CheckBox ID="CheckBox6" runat="server" />  </td>
  </tr>
</table>

<!-- table code modified but sourced from w3schools -->


<div style="text-align:right">
<asp:Button ID="Button1" runat="server" Text="Add selected items to cart"  />
</div>
















   <%-- search bar help https://www.codeproject.com/Questions/1208008/How-to-add-a-search-bar-on-ASP-NET-using-Cshar --%>
</asp:Content>
