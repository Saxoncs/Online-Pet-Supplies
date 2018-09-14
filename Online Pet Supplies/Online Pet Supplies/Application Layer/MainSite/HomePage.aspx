<%-- Home Page --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.MainSite.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%-- Home page consists of a single image and somestatic text --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="text-align: center;">
       <h1> Welcome to pet supplies online your one stop Pet supplies shop</h1>
           <a href="Catalogue.aspx">
                <img src =" images/catalogueLogo.jpg" style="max-width: 50%; height: auto;" alt="Catalogue image"  />
            </a> 
        <h2>Click the image above to check out the best catalogue you have evr seen in your life</h2>
        


     

          
          
</div>
</asp:Content>
