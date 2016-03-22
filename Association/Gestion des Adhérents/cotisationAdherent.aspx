<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaitre/association.Master" AutoEventWireup="true" CodeBehind="cotisationAdherent.aspx.cs" Inherits="Association.Gestion_des_Adhérents.cotisationAdherent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form method="post" runat="server">
      <div class="form-group">
                
                <div class="col-md-10">
                    <label for="LoginUserName" class="col-md-2 control-label">Filtrer avec la date</label>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" SelectedDate="03/20/2016 16:57:49" Width="330px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                    <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="Button" />

                </div>
            </div>


 


            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:associationConnectionString %>' SelectCommand="SELECT [IDAdherent], [Nom], [Prenom], [Genre], [Naissance], [Photo], [SituatFam], [VilOrig] FROM [Adherent]"></asp:SqlDataSource>
         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
             <Columns>
                 <asp:BoundField DataField="IDAdherent" HeaderText="IDAdherent" SortExpression="IDAdherent"></asp:BoundField>
                 <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre"></asp:BoundField>
                 <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom"></asp:BoundField>
                 <asp:BoundField DataField="Prenom" HeaderText="Prenom" SortExpression="Prenom"></asp:BoundField>
                 <asp:BoundField DataField="VilOrig" HeaderText="VilOrig" SortExpression="VilOrig"></asp:BoundField>
                 <asp:BoundField DataField="Adresse" HeaderText="Adresse" SortExpression="Adresse"></asp:BoundField>
                 <asp:BoundField DataField="Adresse2" HeaderText="Adresse2" SortExpression="Adresse2"></asp:BoundField>
                 <asp:BoundField DataField="CP" HeaderText="CP" SortExpression="CP"></asp:BoundField>
                 <asp:BoundField DataField="Ville" HeaderText="Ville" SortExpression="Ville"></asp:BoundField>
                 <asp:BoundField DataField="TelFixe" HeaderText="TelFixe" SortExpression="TelFixe"></asp:BoundField>
                 <asp:BoundField DataField="Portable" HeaderText="Portable" SortExpression="Portable"></asp:BoundField>
                 <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail"></asp:BoundField>
             </Columns>
         </asp:GridView>
         <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:associationConnectionString2 %>' SelectCommand="SELECT Adherent.IDAdherent, Adherent.Genre, Adherent.Nom, Adherent.Prenom, Adherent.VilOrig, Coordonnees.Adresse, Coordonnees.Adresse2, Coordonnees.CP, Coordonnees.Ville, Coordonnees.TelFixe, Coordonnees.Portable, Coordonnees.Mail
FROM (Adherent INNER JOIN Coordonnees ON Adherent.IDAdherent = Coordonnees.IDAdherent) INNER JOIN Cotisation ON Adherent.IDAdherent = Cotisation.IDAdherent"></asp:SqlDataSource>
     </form>

</asp:Content>
