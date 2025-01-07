<%@ Page Title="" Language="C#" MasterPageFile="~/Airline/AirlineMaster.master" AutoEventWireup="true" CodeFile="View Complaint.aspx.cs" Inherits="Airline_View_Complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style12
    {
        width: 80%;
        font-family: Arial, Helvetica, sans-serif;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="4" class="style12">
    <tr>
        <td style="text-align: center; font-size: x-large">
            View Complaint<hr />
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" 
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" Width="773px">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" 
                        SortExpression="Name" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" 
                        SortExpression="Email_ID" />
                    <asp:BoundField DataField="Mobile_no" HeaderText="Mobile_no" 
                        SortExpression="Mobile_no" />
                    <asp:BoundField DataField="Complaints" HeaderText="Complaints" 
                        SortExpression="Complaints" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT [Name], [Email_ID], [Mobile_no], [Complaints] FROM [Complaints] WHERE ([companyname] = @companyname)">
                <SelectParameters>
                    <asp:SessionParameter Name="companyname" SessionField="User" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

