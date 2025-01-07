<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Airlinelogin.aspx.cs" Inherits="User_Airlinelogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style9
        {
            width: 90%;
        }
        .style10
        {
            font-size: medium;
            font-weight: normal;
            color: #999999;
        }
        .style11
        {
            background-color: #E4E4E4;
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
                Airline Company Login<br />
                <br />
                <span class="style10">Enter Username and Password TO Login:</span></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtusername0" runat="server" placeholder="Enter Username" 
                    Height="40px" Width="300px" CssClass="style11"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtpassword0" runat="server" Height="40px" Width="300px" placeholder="Enter Password"
                    TextMode="Password" CssClass="style11"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:Button ID="btnlogin0" runat="server" BackColor="#FF9933" ForeColor="White" 
                    Height="40px" onclick="btnlogin_Click" Text="Login" Width="180px" style="border-radius:10px;"
                    BorderStyle="None" Font-Bold="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                Don&#39;t Have An Account ?&nbsp;
                                        <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#3399FF" 
                                            
                    style="text-decoration:none; font-size: medium; font-weight: 700;" 
                    NavigateUrl="~/User/AirlineRegistration.aspx">Sign Up Now</asp:HyperLink>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
            </td>
            <td valign="top">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/login.png" 
                    Height="400px" Width="500px" />
            </td>
        </tr>
    </table>
    <br />
<br />
</asp:Content>

