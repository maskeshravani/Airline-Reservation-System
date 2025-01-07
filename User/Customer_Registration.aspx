<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Customer_Registration.aspx.cs" Inherits="User_Customer_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
         
        }
        .style5
        {
          
        }
        .style6
        {
        
        }
        .style10
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" cellpadding="4">
        <tr>
            <td>
    <table align="center" cellpadding="6" cellspacing="0" class="" 
                    style="border: thin solid #C0C0C0" width="500">
        <tr>
            <td colspan="2" style="font-weight: 700" class="style10">
                Customer Registration<hr />
            </td>
        </tr>
        <tr>
            <td>
                Username</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Height="35px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="">
                Address</td>
            <td class="">
                <asp:TextBox ID="txtaddress" runat="server" Height="35px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="Enter your address" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Mobile_no</td>
            <td>
                <asp:TextBox ID="txtMobileno" runat="server" Height="35px" Width="300px" 
                    MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtMobileno" ErrorMessage="Enter your mobile number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Age</td>
            <td class="style4">
                <asp:TextBox ID="txtage" runat="server" Height="35px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtage" ErrorMessage="Enter your age" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Aadhar</td>
            <td class="style5">
                <asp:TextBox ID="txtaadharno" runat="server" Height="35px" Width="300px" 
                    MaxLength="12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtaadharno" ErrorMessage="Enter your aadhar" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email_ID</td>
            <td class="style4">
                <asp:TextBox ID="txtemailid" runat="server" Height="35px" Width="300px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtemailid" ErrorMessage="Enter your valid emailid" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" Height="35px" Width="300px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Retype_password</td>
            <td>
                <asp:TextBox ID="txtretypepass" runat="server" TextMode="Password" 
                    Height="35px" Width="300px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtretypepass" 
                    ErrorMessage="passsword must be match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnsubmit" runat="server"  
                   onclick="btnsubmit_Click" 
                 Text="Submit" Width="180px" style="border-radius:10px;"
                    BorderStyle="None" Font-Bold="True" BackColor="#FF9933" ForeColor="White" 
                    Height="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" 
                   onclick="btnreset_Click" 
                  Width="180px" style="border-radius:10px;"
                    BorderStyle="None" Font-Bold="True" BackColor="#FF9933" ForeColor="White" 
                    Height="40px"  Text="Reset"  />
                <br />
                Already Have An Account:&nbsp;
                                        <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#3399FF" 
                                            
                    style="text-decoration:none; font-size: medium; font-weight: 700;" 
                    NavigateUrl="~/User/Customer login.aspx">Log In Now</asp:HyperLink>
            </td>
        </tr>
    </table>
            </td>
            <td valign="top">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/login.png" 
                    Height="500px" Width="500px" />
            </td>
        </tr>
 
    </table>
    <br />
</asp:Content>

