<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.MainSite.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style = "margin-left = "10"">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summary text-danger" HeaderText="Please correct these entries:" />

    <h2>Please enter your details to set up an account with Online Pet Supplies.</h2>

    <br/>First Name<br/>
    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator0" runat="server" ControlToValidate="txtFirstName" CssClass="text-danger" ErrorMessage="You must enter a first name." >
    </asp:RequiredFieldValidator>


    <br/>Last Name<br/>
    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" CssClass="text-danger" ErrorMessage="You must enter a last name." >
    </asp:RequiredFieldValidator>


    <br/>Address<br/>
    <br/>Street<br/>
    <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStreet" CssClass="text-danger" ErrorMessage="You must enter a street." >
    </asp:RequiredFieldValidator>

    <br/>Town<br/>
    <asp:TextBox ID="txtTown" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTown" CssClass="text-danger" ErrorMessage="You must enter a town." >
    </asp:RequiredFieldValidator>

    <br/>Postcode<br/>
    <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPostCode" CssClass="text-danger" ErrorMessage="You must enter a postcode." >
    </asp:RequiredFieldValidator>

    <br/>Phone Number<br/>
    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhoneNumber" CssClass="text-danger" ErrorMessage="You must enter a phone number." >
    </asp:RequiredFieldValidator>

    <br/>E-mail Address<br/>
    <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEmailAddress" CssClass="text-danger" ErrorMessage="You must enter an e-mail address." >
    </asp:RequiredFieldValidator>

    <br/>
    <br/>Username<br/>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUsername" CssClass="text-danger" ErrorMessage="You must enter a username." >
    </asp:RequiredFieldValidator>

    <br/>Password<br/>
    <asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword1" CssClass="text-danger" ErrorMessage="You must enter a password." >
    </asp:RequiredFieldValidator>

    <br/>Retype password<br/>
    <asp:TextBox ID="txtPassword2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPassword2" CssClass="text-danger" ErrorMessage="You must enter a password again." >
    </asp:RequiredFieldValidator>

    <br/><br />
        </div>
    <asp:Button ID="btnSubmitRegistrationForm" runat="server" Text="Submit Form" />

</asp:Content>
