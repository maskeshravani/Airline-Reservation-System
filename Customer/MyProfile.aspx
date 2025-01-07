<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="Customer_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }

        .style9
        {
            width: 90%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="6" class="style9">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td valign="top">
                <table align="center" cellpadding="10" cellspacing="10" width="400" 
                    style="border: thin solid #C0C0C0; border-radius:10px;">
                    <tr>
                        <td style="text-align: left; font-weight: 700; font-size: x-large;">
                            Edit My Profile</td>
                    </tr>
                    <tr>
                        <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataSourceID="SqlDataSource1" Height="218px" Width="613px" BackColor="#CCCCCC" 
                                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                                CellSpacing="2" ForeColor="Black">
                                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="User_name" HeaderText="User_name" 
                        SortExpression="User_name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Mobile_no" HeaderText="Mobile_no" 
                        SortExpression="Mobile_no" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Aadhar_no" HeaderText="Aadhar_no" 
                        SortExpression="Aadhar_no" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" 
                        SortExpression="Email_ID" />
                    <asp:BoundField DataField="Password" HeaderText="Password" 
                        SortExpression="Password" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
            </asp:DetailsView>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/login.png" 
                    Height="400px" Width="550px" />
            </td>
        </tr>
    </table>
    <br />
    <table align="center" cellpadding="2" cellspacing="0" class="style2">
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT * FROM [Customer_Registration] WHERE ([User_name] = @User_name)" UpdateCommand="update Customer_Registration set[Address]=@Address,[Mobile_no]=@Mobile_no,[Age]=@Age,[Aadhar_no]=@Aadhar_no,[Email_ID]=@Email_ID,[Password]=@Password where [User_name]=@User_name">
                <SelectParameters>
                    <asp:SessionParameter Name="User_name" SessionField="User" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

