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


    <br/>Address<br/>
    <%-- Street address field, contains a required field validator --%>    
    <br/>Street<br/>
    <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStreet" CssClass="text-danger" ErrorMessage="You must enter a street." >
    </asp:RequiredFieldValidator>

    <%-- Town field, contains a required field validator --%>
    <br/>Town<br/>
    <asp:TextBox ID="txtTown" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTown" CssClass="text-danger" ErrorMessage="You must enter a town." >
    </asp:RequiredFieldValidator>

    <%-- postcode field, contains a required field validator --%>
    <br/>Postcode<br/>
    <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPostCode" CssClass="text-danger" ErrorMessage="You must enter a postcode." >
    </asp:RequiredFieldValidator>

    <%-- Phone number field, contains a required field validator --%>
    <br/>Phone Number<br/>
    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhoneNumber" CssClass="text-danger" ErrorMessage="You must enter a phone number." >
    </asp:RequiredFieldValidator>

    <%-- Email address field, contains a required field validator --%>
    <br/>E-mail Address<br/>
    <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEmailAddress" CssClass="text-danger" ErrorMessage="You must enter an e-mail address." >
    </asp:RequiredFieldValidator>

    <%-- username field, contains a required field validator --%>
    <br/>
    <br/>Username<br/>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUsername" CssClass="text-danger" ErrorMessage="You must enter a username." >
    </asp:RequiredFieldValidator>

    <%-- password field, contains a required field validator --%>
    <br/>Password<br/>
    <asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword1" CssClass="text-danger" ErrorMessage="You must enter a password." >
    </asp:RequiredFieldValidator>

    <%-- varify password field, contains a required field validator --%>
    <br/>Retype password<br/>
    <asp:TextBox ID="txtPassword2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPassword2" CssClass="text-danger" ErrorMessage="You must enter a password again." >
    </asp:RequiredFieldValidator>

    <br/><br />
    <%-- submission button --%>
    <asp:Button ID="btnSubmitRegistrationForm" runat="server" Text="Submit Form" />
</asp:Content>
