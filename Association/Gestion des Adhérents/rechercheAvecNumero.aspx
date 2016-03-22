<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaitre/association.Master" AutoEventWireup="true" CodeBehind="rechercheAvecNumero.aspx.cs" Inherits="Association.Gestion_des_Adhérents.rechercheAvecNumero" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form  runat="server">
    <asp:Label ID="numeroArdherent" runat="server" Text="Numero adherent :"></asp:Label>
    <asp:TextBox runat="server" ID="TextBoxnumeroArdherent"></asp:TextBox>
    <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="Button" OnClientClick="Button1_Click" />


                <asp:GridView  CssClass="table table-striped table-bordered table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" AllowSorting="True" >
                <Columns>
                    <asp:BoundField HeaderStyle-CssClass="visible-lg" DataField="IDAdherent" HeaderText="IDAdherent" SortExpression="IDAdherent"></asp:BoundField>
                    <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom"></asp:BoundField>
                    <asp:BoundField DataField="Prenom" HeaderText="Prenom" SortExpression="Prenom"></asp:BoundField>
                    <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre"></asp:BoundField>
                    <asp:BoundField DataField="Naissance" HeaderText="Naissance" SortExpression="Naissance"></asp:BoundField>
                    <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo"></asp:BoundField>
                    <asp:BoundField DataField="SituatFam" HeaderText="SituatFam" SortExpression="SituatFam"></asp:BoundField>
                    <asp:BoundField DataField="VilOrig" HeaderText="VilOrig" SortExpression="VilOrig"></asp:BoundField>

                 
                </Columns>
            </asp:GridView>
        </form>

</asp:Content>
