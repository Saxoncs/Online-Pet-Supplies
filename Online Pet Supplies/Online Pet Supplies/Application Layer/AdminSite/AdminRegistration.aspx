<%-- Registration page for making new administrators --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/AdminSite/Admin.Master" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.AdminSite.AdminRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summary text-danger" HeaderText="Please correct these entries:" />

    <%-- Heading for the registration page --%>
    <h2>Please enter your details to set up an administrator account with Online Pet Supplies.</h2>

    <%-- First name field, contains a required field validator --%>
    <br/>First Name<br/>
    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator0" runat="server" ControlToValidate="txtFirstName" CssClass="text-danger" ErrorMessage="You must enter a first name." >
    </asp:RequiredFieldValidator>

    <%-- Last name field, contains a required field validator --%>
    <br/>Last Name<br/>
    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" CssClass="text-danger" ErrorMessage="You must enter a last name." >
    </asp:RequiredFieldValidator>



    <%-- Email address field, contains a required field validator and a regular expression validator to ensure the text is a valid email address --%>
    <br/>E-mail Address<br/>
    <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEmailAddress" CssClass="text-danger" ErrorMessage="You must enter an e-mail address." >
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="emailAddressValidator" runat="server" ControlToValidate="txtEmailAddress"
        CssClass="text-danger" ValidationExpression="^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$" ErrorMessage="Must be a valid email address.">
    </asp:RegularExpressionValidator>


    <%-- password field, contains a required field validator and a regular expression validator to ensure the username is reasonable --%>
    <br/>Password<br/>
    <asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword1" CssClass="text-danger" ErrorMessage="You must enter a password." >
    </asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="passwordValidator1" runat="server" ControlToValidate="txtPassword1" CssClass="text-danger" ValidationExpression="^[a-z0-9_-]{6,18}$" ErrorMessage="Must be a valid password.">
    </asp:RegularExpressionValidator>

    <%-- varify password field, contains a required field validator and a compare validator to ensure it matches the first password--%>
    <br/>Retype password<br/>
    <asp:TextBox ID="txtPassword2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPassword2" CssClass="text-danger" ErrorMessage="You must enter a password again." >
    </asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cvEmail2" runat="server" ControlToValidate="txtPassword2" CssClass="text-danger"
     ControlToCompare="txtPassword1" Display="Dynamic" ErrorMessage="Both passwords must be the same.">Must match first password. 
    </asp:CompareValidator>

    <br/><br />
    <%-- submission button --%>
    <asp:Button ID="btnSubmitRegistrationForm" runat="server" Text="Submit Form" OnClick="btnSubmitRegistrationForm_Click" /><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
