<%-- Registration page for a new user --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.MainSite.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div style = "margin-left: 10px" >
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summary text-danger" HeaderText="Please correct these entries:" />

    <h2>Please enter your details to set up an account with Online Pet Supplies.</h2>

    <%-- First name field, contains a required field validator --%>
    <br/>First Name *<br/>
    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator0" runat="server" ControlToValidate="txtFirstName" CssClass="text-danger" ErrorMessage="You must enter a first name." >
    </asp:RequiredFieldValidator>

    <%-- Last name field, contains a required field validator --%>
    <br/>Last Name *<br/>
    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" CssClass="text-danger" ErrorMessage="You must enter a last name." >
    </asp:RequiredFieldValidator>

   
    <br/>Address *<br/>
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

    <%-- Postcode field, contains a required field validator and a regular expression validator to ensure the postcode is 4 digits --%>
    <br/>Postcode<br/>
    <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPostCode" CssClass="text-danger" ErrorMessage="You must enter a postcode." >
    </asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="postCodeValidator" runat="server" ControlToValidate="txtPostCode" CssClass="text-danger" ValidationExpression="\d{4}" ErrorMessage="Must be a four digit number.">
    </asp:RegularExpressionValidator>

    <%-- Phone number field, contains a required field validator and a regular expression validator to ensure the number is 10 digits --%>
    <br/>Phone Number<br/>
    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhoneNumber" CssClass="text-danger" ErrorMessage="You must enter a phone number." >
    </asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="PhoneN" runat="server" ErrorMessage="Phone number must be 10 digits" CssClass="text-danger" Display="Dynamic"  ValidationExpression= "\d{10}" ControlToValidate="txtPhoneNumber">
       </asp:RegularExpressionValidator>


    <%-- E-mail address field, contains a required field validator and a regular expression validator to ensure the text is a valid email address --%>
    <br/>E-mail Address<br/>
    <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEmailAddress" CssClass="text-danger" ErrorMessage="You must enter an e-mail address." >
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="emailAddressValidator" runat="server" ControlToValidate="txtEmailAddress"
        CssClass="text-danger" ValidationExpression="^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$" ErrorMessage="Must be a valid email address.">
    </asp:RegularExpressionValidator>



    <br/>
    <%-- Username field, contains a required field validator and a regular expression validator to ensure the username is reasonable --%>
    <br/>Username<br/>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtUsername" CssClass="text-danger" ErrorMessage="You must enter a username." >
    </asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="userNameValidator" runat="server" ControlToValidate="txtUserName" CssClass="text-danger" ValidationExpression="^[a-z0-9_-]{3,16}$" ErrorMessage="Must be a valid username.">
    </asp:RegularExpressionValidator>
    
    <%-- Password field, contains a required field validator and a regular expression validator to ensure the password is reasonable --%>
    <br/>Password<br/>
    <asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword1" CssClass="text-danger" ErrorMessage="You must enter a password." >
    </asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="passwordValidator1" runat="server" ControlToValidate="txtPassword1" CssClass="text-danger" ValidationExpression="^[a-z0-9_-]{6,18}$" ErrorMessage="Must be a valid password.">
    </asp:RegularExpressionValidator>

    <%-- Password verification field, contains a required field validator and a compare validator to ensure the retyped password matches the original --%>
    <br/>Retype password<br/>
    <asp:TextBox ID="txtPassword2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPassword2" CssClass="text-danger" ErrorMessage="You must enter a password again." >
    </asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cvEmail2" runat="server" ControlToValidate="txtPassword2" CssClass="text-danger"
     ControlToCompare="txtPassword1" Display="Dynamic" ErrorMessage="Both passwords must be the same.">Must match first password. </asp:CompareValidator>
    <br/>
     </div>

    <%-- Submission button --%>
    <asp:Button ID="btnSubmitRegistrationForm" runat="server" Text="Register" />

</asp:Content>
