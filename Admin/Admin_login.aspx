<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_login.aspx.cs" Inherits="Admin_Admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style2
        {
            height: 38px;
        }
    </style>
</head>
<body background="../Images/bg.jpg" style="height: 800px">
    
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table align="center" cellpadding="4" cellspacing="0" bgcolor="#CCCCCC"  
        style="height: 285px; width: 394px;opacity:0.7;">
        <tr>
            <td colspan="2" style="font-weight: 700; text-align: center">
                Admin_login</td>
        </tr>
        <tr>
            <td>
                Admin_name</td>
            <td>
                <asp:TextBox ID="txtadminname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password</td>
            <td class="style2">
                <asp:TextBox ID="txtpassword" runat="server" Height="30px" Width="200px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnlogin" runat="server" BackColor="#336699" ForeColor="White" 
                    Height="30px" onclick="btnlogin_Click" Text="Login" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BackColor="#336699" ForeColor="White" 
                    Height="30px" onclick="btncancel_Click" Text="Cancel" Width="150px" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
    
</body>
</html>
