<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manageadmin.aspx.cs" Inherits="Admin_Manageadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
    {
        font-size: x-large;
    }
    .style13
    {
        font-family: Arial, Helvetica, sans-serif;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="0">
        <tr>
            <td colspan="2" style="font-weight: 700; text-align: center" class="style12">
                <span class="style13">
                <br />
                Manage Admin</span><hr />
            </td>
        </tr>
        <tr>
            <td>
                Admin Name</td>
            <td>
                <asp:TextBox ID="txtadminname" runat="server" Height="35px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtadminname" ErrorMessage="Enter Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Old Password</td>
            <td>
                <asp:TextBox ID="txtoldpassword" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                New Password</td>
            <td>
                <asp:TextBox ID="txtnewpassword" runat="server" Height="35px" Width="250px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password</td>
            <td>
                <asp:TextBox ID="txtconfirmpassword" runat="server" Height="35px" Width="250px" 
                    TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnewpassword" ControlToValidate="txtconfirmpassword" 
                    ErrorMessage="passsword must be match" ForeColor="#FF3300"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnsave" runat="server" BackColor="#FF9933" ForeColor="White" 
                    Height="35px" Text="Save" Width="170px" onclick="btnsave_Click" 
                    BorderStyle="None" Font-Bold="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="#FF9933" ForeColor="White" 
                    Height="35px" Text="Update" Width="170px" onclick="btnupdate_Click" 
                    BorderStyle="None" Font-Bold="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" BackColor="#FF9933" ForeColor="White" 
                    Height="35px" Text="Delete" Width="170px" onclick="btndelete_Click" 
                    BorderStyle="None" Font-Bold="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BackColor="#FF9933" ForeColor="White" 
                    Height="35px" Text="Cancel" Width="170px" onclick="btncancel_Click" 
                    BorderStyle="None" Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" ForeColor="Black" Width="606px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" 
                            SortExpression="password" />
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
                    SelectCommand="SELECT DISTINCT * FROM [Admin]"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

