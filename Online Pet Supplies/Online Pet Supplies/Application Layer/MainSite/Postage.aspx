<%-- Postage page --%>
<%@ Page Title="Postage" Language="C#" MasterPageFile="~/Application Layer/MainSite/PrimaryLayout.Master" AutoEventWireup="true" CodeBehind="Postage.aspx.cs" Inherits="Online_Pet_Supplies.Application_Layer.MainSite.Postage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>Choose your postage options</h1>
    
  <%-- Postage options checklist --%>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem> Standard Postage 3-6 days</asp:ListItem>
        <asp:ListItem> Express 1-2 days</asp:ListItem>
    </asp:RadioButtonList>

     <asp:RequiredFieldValidator ID="postage" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please pick a postage option" >
     </asp:RequiredFieldValidator>
       

    <h2> Please enter your postage address</h2>


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
    <br />
    <br />
        <asp:Button ID="btnSubmitPostageForm" runat="server" Text="Continue to Payment" OnClick="BtnSubmitPostageForm_Click" />


</asp:Content>
