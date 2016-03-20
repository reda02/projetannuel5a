<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaitre/association.Master" AutoEventWireup="true" CodeBehind="listCouples.aspx.cs" Inherits="Association.Gestion_des_Adhérents.listCouples" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
            <form method="post" runat="server">
&nbsp;
 
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
                </div>
            </div>
          
    
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



            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:associationConnectionString %>' SelectCommand="SELECT [IDAdherent], [Nom], [Prenom], [Genre], [Naissance], [Photo], [SituatFam], [VilOrig] FROM [Adherent]"></asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server"></asp:GridView>








    </form>

</asp:Content>
