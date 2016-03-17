<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaitre/association.Master" AutoEventWireup="true" CodeBehind="listAdh.aspx.cs" Inherits="Association.Gestion_des_Adhérents.listAdh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <form action="retour.php" method="post" runat="server">
<input type="text" name="txt"/>
<input type="submit" value="Envoyer"/>
 
   <div class="form-group">
                <label for="LoginUserName" class="col-md-2 control-label">Nom d’utilisateur</label>
                <div class="col-md-10">
                    <input type="text" id="LoginUserName" class="form-control" data-bind="value: userName, hasFocus: true" />
                </div>
            </div>
          
    
        <asp:GridView  AllowPaging="True"  CssClass="table table-striped table-bordered table-hover" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" AllowSorting="True">
            <Columns>
                <asp:BoundField HeaderStyle-CssClass="visible-lg" DataField="Nom" HeaderText="Nom" SortExpression="Nom">
<HeaderStyle CssClass="visible-lg"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Prenom" HeaderText="Prenom" SortExpression="Prenom"></asp:BoundField>
                <asp:BoundField DataField="Naissance" HeaderText="Naissance" SortExpression="Naissance"></asp:BoundField>
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre"></asp:BoundField>
                <asp:BoundField DataField="SituatFam" HeaderText="SituatFam" SortExpression="SituatFam"></asp:BoundField>
                <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo"></asp:BoundField>
                <asp:BoundField DataField="IDAdherent" HeaderText="IDAdherent" SortExpression="IDAdherent"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:associationConnectionString %>' SelectCommand="SELECT [Nom], [Prenom], [Naissance], [Genre], [SituatFam], [Photo], [IDAdherent] FROM [Adherent]"></asp:SqlDataSource>
     
     
    </form>
    
</asp:Content>
