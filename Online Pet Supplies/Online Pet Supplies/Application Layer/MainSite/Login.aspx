<%-- Login Page --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master"  AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%-- Contains 2 fields, 1 for a username and one for a password as well as a submit button --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summary text-danger" HeaderText="Please correct these entries:" />

    <h2>Please enter your details to login to the Online Pet Supplies website.</h2>





    <%-- Username field, contains a required field validator --%>
    <asp:Label ID="Label1" CssClass="text-danger" runat="server" Text=""></asp:Label>

    <br />Username<br/>
    
    <asp:TextBox ID="userName" runat="server"></asp:TextBox> <br/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator0" runat="server" ControlToValidate="userName" CssClass="text-danger" ErrorMessage="You must enter a registered username." >
    </asp:RequiredFieldValidator>

    <%-- Password field, contains a required field validator --%>
    <br/>Password<br/>
    <asp:TextBox ID="passWord" runat="server"></asp:TextBox> <br/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" CssClass="text-danger" ErrorMessage="You must enter your password." >
    </asp:RequiredFieldValidator>

    <%-- Submit button --%>
    <br />
    <asp:Button ID="SubmitButton" runat="server" Text="Login" Clicked="UsernameSesh" OnClick="SubmitButton_Click"  />

    
</asp:Content>
