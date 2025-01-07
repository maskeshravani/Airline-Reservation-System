<%@ Page Title="" Language="C#" MasterPageFile="~/Airline/AirlineMaster.master" AutoEventWireup="true" CodeFile="Add Flight.aspx.cs" Inherits="Airline_Flight_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
    {
        height: 32px;
            font-weight: 700;
        font-size: x-large;
        font-family: Arial, Helvetica, sans-serif;
    }
    .style13
    {
        height: 36px;
    }
        .style14
        {
            width: 51px;
        }
        .style17
    {
        height: 60px;
    }
    .style18
    {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="3" cellspacing="0" align="center" 
    style="font-family: Arial, Helvetica, sans-serif">
    <tr>
        <td class="style12" colspan="2">
            <div class="style18">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Flight Details</div>
            <hr />
        </td>
    </tr>
    <tr>
        <td>
            Flight ID</td>
        <td>
            <asp:TextBox ID="txtflightid" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Company Name</td>
        <td class="style17">
            <asp:TextBox ID="txtcompanyname" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Flight Number</td>
        <td>
            <asp:TextBox ID="txtflightnumber" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Total Capacity</td>
        <td class="style13">
            <asp:TextBox ID="txttotalcapacity" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;First Class
            Capacity</td>
        <td class="style13">
            <asp:TextBox ID="txtcapacity" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;<strong>Economy</strong>&nbsp;Capacity</td>
        <td>
            <asp:TextBox ID="txteconomyclass" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <strong>Buisness</strong>&nbsp;&nbsp;
            Capacity</td>
        <td>
            <asp:TextBox ID="txtbuisnessclass" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="btnaddnew" runat="server" BackColor="#FF6600" ForeColor="White" 
                Text="Add new" Width="160px" onclick="btnaddnew_Click" BorderStyle="None" 
                Font-Bold="True" Height="35px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsave" runat="server" BackColor="#FF6600" ForeColor="White" 
                onclick="btnsave_Click" Text="Save" Width="160px" BorderStyle="None" 
                Font-Bold="True" Height="35px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnupdate" runat="server" BackColor="#FF6600" ForeColor="White" 
                Text="Update" Width="160px" onclick="btnupdate_Click" BorderStyle="None" 
                Font-Bold="True" Height="35px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndelete" runat="server" BackColor="#FF6600" ForeColor="White" 
                Text="Delete" Width="160px" onclick="btndelete_Click" BorderStyle="None" 
                Font-Bold="True" Height="35px" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="Flight_ID">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" 
                        SortExpression="Company_Name" />
                    <asp:BoundField DataField="Flight_ID" HeaderText="Flight_ID" 
                        SortExpression="Flight_ID" ReadOnly="True" />
                    <asp:BoundField DataField="Flight_Number" HeaderText="Flight_Number" 
                        SortExpression="Flight_Number" />
                    <asp:BoundField DataField="Total_Capacity" HeaderText="Total_Capacity" 
                        SortExpression="Total_Capacity" />
                    <asp:BoundField DataField="First_Class_Capacity" 
                        HeaderText="First_Class_Capacity" SortExpression="First_Class_Capacity" />
                    <asp:BoundField DataField="Economy_Capacity" HeaderText="Economy_Capacity" 
                        SortExpression="Economy_Capacity" />
                    <asp:BoundField DataField="Business_Capacity" HeaderText="Business_Capacity" 
                        SortExpression="Business_Capacity" />
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
                
                SelectCommand="SELECT * FROM [Flight_Details] WHERE ([Company_Name] = @Company_Name)">
                <SelectParameters>
                    <asp:SessionParameter Name="Company_Name" SessionField="User" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

