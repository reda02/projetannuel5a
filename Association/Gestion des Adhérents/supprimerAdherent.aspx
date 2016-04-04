<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaitre/association.Master" AutoEventWireup="true" CodeBehind="supprimerAdherent.aspx.cs" Inherits="Association.Gestion_des_Adhérents.ajouterAdherent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
         <asp:GridView CssClass="table table-striped table-bordered table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="IDAdherent" AllowPaging="True" AllowSorting="True">
             <Columns>
                 <asp:CommandField ShowSelectButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                 <asp:BoundField DataField="IDAdherent" HeaderText="IDAdherent" SortExpression="IDAdherent" ReadOnly="True"></asp:BoundField>
                 <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom"></asp:BoundField>
                 <asp:BoundField DataField="Prenom" HeaderText="Prenom" SortExpression="Prenom"></asp:BoundField>
                 <asp:BoundField DataField="Naissance" HeaderText="Naissance" SortExpression="Naissance"></asp:BoundField>
                 <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre"></asp:BoundField>
                 <asp:BoundField DataField="VilOrig" HeaderText="VilOrig" SortExpression="VilOrig"></asp:BoundField>
                 <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo"></asp:BoundField>
                 <asp:BoundField DataField="SituatFam" HeaderText="SituatFam" SortExpression="SituatFam"></asp:BoundField>
             </Columns>
         </asp:GridView>

         <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:associationConnectionString2 %>' SelectCommand="SELECT [IDAdherent], [Nom], [Prenom], [Naissance], [Genre], [VilOrig], [Photo], [SituatFam] FROM [Adherent]" DeleteCommand="DELETE FROM [Adherent] WHERE [IDAdherent] = @IDAdherent" InsertCommand="INSERT INTO [Adherent] ([IDAdherent], [Nom], [Prenom], [Naissance], [Genre], [VilOrig], [Photo], [SituatFam]) VALUES (@IDAdherent, @Nom, @Prenom, @Naissance, @Genre, @VilOrig, @Photo, @SituatFam)" UpdateCommand="UPDATE [Adherent] SET [Nom] = @Nom, [Prenom] = @Prenom, [Naissance] = @Naissance, [Genre] = @Genre, [VilOrig] = @VilOrig, [Photo] = @Photo, [SituatFam] = @SituatFam WHERE [IDAdherent] = @IDAdherent">
             <DeleteParameters>
                 <asp:Parameter Name="IDAdherent" Type="Int32"></asp:Parameter>
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="IDAdherent" Type="Int32"></asp:Parameter>
                 <asp:Parameter Name="Nom" Type="String"></asp:Parameter>
                 <asp:Parameter Name="Prenom" Type="String"></asp:Parameter>
                 <asp:Parameter Name="Naissance" Type="DateTime"></asp:Parameter>
                 <asp:Parameter Name="Genre" Type="String"></asp:Parameter>
                 <asp:Parameter Name="VilOrig" Type="String"></asp:Parameter>
                 <asp:Parameter Name="Photo" Type="String"></asp:Parameter>
                 <asp:Parameter Name="SituatFam" Type="String"></asp:Parameter>
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="Nom" Type="String"></asp:Parameter>
                 <asp:Parameter Name="Prenom" Type="String"></asp:Parameter>
                 <asp:Parameter Name="Naissance" Type="DateTime"></asp:Parameter>
                 <asp:Parameter Name="Genre" Type="String"></asp:Parameter>
                 <asp:Parameter Name="VilOrig" Type="String"></asp:Parameter>
                 <asp:Parameter Name="Photo" Type="String"></asp:Parameter>
                 <asp:Parameter Name="SituatFam" Type="String"></asp:Parameter>
                 <asp:Parameter Name="IDAdherent" Type="Int32"></asp:Parameter>
             </UpdateParameters>
         </asp:SqlDataSource>
         <asp:LinqDataSource runat="server" EntityTypeName="" ID="LinqDataSource1"></asp:LinqDataSource>
         <asp:EntityDataSource runat="server" ID="EntityDataSource1"></asp:EntityDataSource>
     

    <asp:SqlDataSource  DeleteCommand="DELETE FROM [Adherent] WHERE (IDAdherent = @IDAdherent)" runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:associationConnectionString %>' SelectCommand="SELECT * FROM [Adherent]"></asp:SqlDataSource>

     
</asp:Content>
