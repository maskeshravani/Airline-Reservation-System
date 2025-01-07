<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="View Airlines.aspx.cs" Inherits="User_View_Airlines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style9
        {
            width: 90%;
        }
        .style10
        {
            font-size: x-large;
        }
        .style11
        {
            color: #0066CC;
            font-weight: bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="6" class="style9">
    <tr>
        <td rowspan="2">
            <table align="center" cellpadding="10" cellspacing="10" width="400" 
                    style="border: thin solid #C0C0C0; border-radius:10px;">
                <tr>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" BorderColor="White" CellPadding="8" 
                            DataSourceID="SqlDataSource1" RepeatColumns="1" Width="488px">
                            <ItemTemplate>
                                &nbsp;<asp:Image ID="Image9" runat="server" Height="20px" 
                                    ImageUrl="~/Images/icons8-flight-50 (1).png" Width="20px" />
                                <asp:Label ID="Company_nmLabel" runat="server" 
                                    style="font-weight: 700; font-size: large; color: #CC0000;" 
                                    Text='<%# Eval("Company_nm") %>' />
                                <hr />
                                <strong>Email_ID:</strong>
                                <asp:Label ID="Email_IDLabel" runat="server" Text='<%# Eval("Email_ID") %>' />
                                <br />
                                <strong>Website:</strong>
                                <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' />
                                <br />
                                <strong>Contact_no:</strong>
                                <asp:Label ID="Contact_noLabel" runat="server" 
                                    Text='<%# Eval("Contact_no") %>' />
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [Company_nm], [Email_ID], [Website], [Contact_no] FROM [Company_Registration]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
        <td>
            <span class="style10"><strong>Airline Company:&nbsp;</strong></span>&nbsp;
                                        <asp:HyperLink ID="HyperLink1" runat="server" 
                ForeColor="#0066CC" style="text-decoration:none;" 
                                            NavigateUrl="~/User/Airlinelogin.aspx" 
                CssClass="style11">Login</asp:HyperLink>
&nbsp;&nbsp; l&nbsp;&nbsp;&nbsp;
                                        <asp:HyperLink ID="HyperLink2" runat="server" 
                ForeColor="#0066CC" style="text-decoration:none;" 
                                            NavigateUrl="~/User/AirlineRegistration.aspx" 
                CssClass="style11">Sign Up</asp:HyperLink>
                                        </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/webchecking.png" 
                    Height="400px" Width="500px" />
        </td>
    </tr>
</table>
<br />
</asp:Content>

