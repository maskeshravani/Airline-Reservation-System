<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="User_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 34px;
            background-color: #009933;
        }
        .style9
        {
            height: 34px;
            width: 88%;
            color: #000000;
            background-color: #009933;
        }
        .style10
        {
            font-size: x-large;
            text-align: center;
        }
        .style11
        {
            width: 88%;
        }
        .style12
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <table align="center" cellpadding="2" cellspacing="0" class="style3">
        <tr>
            <td colspan="2" style="font-weight: 700" class="style12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style10">&nbsp;
                Enquiry Form</span></td>
        </tr>
        <tr>
            <td class="style11">
                Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter your email id" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Contact No</td>
            <td class="style4">
                <asp:TextBox ID="txtcontactno" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtcontactno" ErrorMessage="Enter your contact number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Subject</td>
            <td class="style4">
                <asp:TextBox ID="txtsubject" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtsubject" ErrorMessage="Enter your subject" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Message</td>
            <td>
                <asp:TextBox ID="txtmessage" runat="server" Height="30px" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtmessage" ErrorMessage="Enter your message" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
&nbsp;&nbsp; &nbsp;<asp:Button ID="btnsubmit" runat="server" BackColor="#336699" ForeColor="White" 
                    Height="30px" onclick="btnsubmit_Click" style="font-weight: 700" Text="Submit" 
                    Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" BackColor="#336699" ForeColor="White" 
                    Height="30px" onclick="btnreset_Click" style="font-weight: 700" Text="Reset" 
                    Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>

