<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="AirlineRegistration.aspx.cs" Inherits="User_AirlineRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
           
        }
        .style9
        {
            width: 80%;
        }
        .style10
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="4" class="style9">
    
        <tr>
            <td>
        <table align="center" cellpadding="4" cellspacing="0" 
    class="style1" __designer:mapid="84">
            <tr __designer:mapid="85">
                <td colspan="2" style="font-weight: 700" __designer:mapid="86" class="style10">
                    Airline Company Registration<hr />
                </td>
            </tr>
            <tr __designer:mapid="87">
                <td __designer:mapid="88">
                    Company ID</td>
                <td __designer:mapid="89">
                    <asp:TextBox ID="txtid" runat="server" Height="35px" Width="300px" 
                        Enabled="False" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="8b">
                <td __designer:mapid="8c">
                    Company name</td>
                <td __designer:mapid="8d">
                    <asp:TextBox ID="txtcompanyname" runat="server" Height="35px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="8f">
                <td __designer:mapid="90">
                    Email ID</td>
                <td __designer:mapid="91">
                    <asp:TextBox ID="txtemailid" runat="server" Height="35px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="93">
                <td __designer:mapid="94">
                    Website</td>
                <td __designer:mapid="95">
                    <asp:TextBox ID="txtwebsite" runat="server" Height="35px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="97">
                <td __designer:mapid="98">
                    Contact number</td>
                <td __designer:mapid="99">
                    <asp:TextBox ID="txtcontactnumber" runat="server" Height="35px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="9b">
                <td __designer:mapid="9c">
                    username</td>
                <td class="" __designer:mapid="9d">
                    <asp:TextBox ID="txtusername" runat="server" Height="35px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="9f">
                <td __designer:mapid="a0">
                    password</td>
                <td __designer:mapid="a1">
                    <asp:TextBox ID="txtpassword" runat="server" Height="35px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="a3">
                <td colspan="2" style="text-align: center" __designer:mapid="a4">
                    <asp:Button ID="btnsubmit" runat="server" BackColor="#FF9933" Font-Bold="True" 
                        ForeColor="White" onclick="btnsubmit_Click" Text="Submit" Width="180px" 
                        BorderStyle="None" Height="40px" style="border-radius:10px"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncancel" runat="server" BackColor="#FF9933" Font-Bold="True" 
                        ForeColor="White" onclick="btncancel_Click" Text="Cancel" Width="180px" 
                        BorderStyle="None" Height="40px" style="border-radius:10px" />
                    <br />
                    Already Have An Account:&nbsp;
                                        <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#3399FF" 
                                            
                    style="text-decoration:none; font-size: medium; font-weight: 700;" 
                    NavigateUrl="~/User/Airlinelogin.aspx">Log In Now</asp:HyperLink>
                </td>
            </tr>
        </table>
                <br />
                <br />
            </td>
            <td valign="top">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/login.png" 
                    Height="477px" Width="500px" />
            </td>
        </tr>
    </table>
</asp:Content>

