<%-- Payment Page --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%-- Page consists of fields for full name, credit card number, expiry date, CCV and a submit button --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style = "margin-left: 10px">

    <%-- Full name field, contains a required field validator --%>
     <br/>Full name<br/>
    <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="fullNameValidator" runat="server" ControlToValidate="txtFullName" CssClass="text-danger" ErrorMessage="You must enter your full name." >
    </asp:RequiredFieldValidator>

    <%-- Credit card number field, contains a required field validator and a regular expression validator to ensure the CCN is 10 digits--%>
     <br/>Credit Card Number<br/>
    <asp:TextBox ID="ccNumber" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="ccNumberValidator" runat="server" ControlToValidate="ccNumber" CssClass="text-danger" ErrorMessage="Please provide your credit card number." >
    </asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="CCValidator" runat="server" ControlToValidate="ccNumber" CssClass="text-danger" ValidationExpression="\d{10}" ErrorMessage="Please enter your 10 digit card number located onthe front of your card.">
    </asp:RegularExpressionValidator>

    <%-- Expiry date field, contains a required field validator and a range validator --%>
     <br/>Expiry Date<br/>
    <asp:TextBox ID="eDate" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="eDateValidator" runat="server" ControlToValidate="eDate" CssClass="text-danger" ErrorMessage="Please provide the expiry date of your credit card." >
    </asp:RequiredFieldValidator>
        <asp:RangeValidator ID ="DateValidator" runat ="server" ControlToValidate="eDate" ErrorMessage="Date must be in the future" Type="Date" MinimumValue="" MaximumValue =" 1/1/2050" Display="Dynamic"></asp:RangeValidator>

     <%-- CCV field, contains a required field validator and a regular expression validator to ensire the CCV is 3 digits --%>
     <br/>CCV<br/>
    <asp:TextBox ID="CCV" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="CCVvalidator" runat="server" ControlToValidate="CCV" CssClass="text-danger" ErrorMessage="Please provide your ccv located on the back of your card." >
    </asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="ccvNumbervalidator" runat="server" ControlToValidate="CCV" CssClass="text-danger" ValidationExpression="\d{3}" ErrorMessage="Please enter your 3 digit ccv located on the back of your card.">
    </asp:RegularExpressionValidator>
        <br/>

        <%-- submission button --%>
         <asp:Button ID="submitPayment" runat="server" Text="Pay now" />
        </div>
   
</asp:Content>
