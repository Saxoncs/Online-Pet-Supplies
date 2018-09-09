<%@ Page Title="" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style = "margin-left: 10px">
     <br/>Full name<br/>
    <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="fullNameValidator" runat="server" ControlToValidate="txtFullName" CssClass="text-danger" ErrorMessage="You must enter your full name." >
    </asp:RequiredFieldValidator>

     <br/>Credit Card Number<br/>
    <asp:TextBox ID="ccNumber" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="ccNumberValidator" runat="server" ControlToValidate="ccNumber" CssClass="text-danger" ErrorMessage="Please provide your credit card number." >
    </asp:RequiredFieldValidator>


     <br/>Expiry Date<br/>
    <asp:TextBox ID="eDate" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="eDateValidator" runat="server" ControlToValidate="eDate" CssClass="text-danger" ErrorMessage="Please provide the expiry date of your credit card." >
    </asp:RequiredFieldValidator>

     <br/>CCV<br/>
    <asp:TextBox ID="CCV" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="CCVvalidator" runat="server" ControlToValidate="eDate" CssClass="text-danger" ErrorMessage="Please provide your ccv located on the back of your card." >
    </asp:RequiredFieldValidator>
        <br/>

         <asp:Button ID="submitPayment" runat="server" Text="Pay now" />
        </div>
   
</asp:Content>
