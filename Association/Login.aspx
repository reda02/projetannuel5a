<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaitre/association.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Association.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        veuillez vous identifier pour accéder au site :</p>
    <p>
        <asp:Login ID="Login1" runat="server">
        </asp:Login>
    </p>
    <p>
        &nbsp;</p>

</asp:Content>
