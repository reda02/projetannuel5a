<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaitre/association.Master" AutoEventWireup="true" CodeBehind="village.aspx.cs" Inherits="Association.Gestion_des_Adhérents.village" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NumVillage" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="NumVillage" HeaderText="NumVillage" ReadOnly="True" SortExpression="NumVillage"></asp:BoundField>
            <asp:BoundField DataField="Villages" HeaderText="Villages" SortExpression="Villages"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:associationConnectionString2 %>' DeleteCommand="DELETE FROM [Villages de la région] WHERE [NumVillage] = @NumVillage" InsertCommand="INSERT INTO [Villages de la région] ([NumVillage], [Villages]) VALUES (@NumVillage, @Villages)" SelectCommand="SELECT * FROM [Villages de la région]" UpdateCommand="UPDATE [Villages de la région] SET [Villages] = @Villages WHERE [NumVillage] = @NumVillage">
        <DeleteParameters>
            <asp:Parameter Name="NumVillage" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NumVillage" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Villages" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Villages" Type="String"></asp:Parameter>
            <asp:Parameter Name="NumVillage" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
 
</asp:Content>
