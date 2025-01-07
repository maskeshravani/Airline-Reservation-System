<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="User_Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 507px;
            color: #000000;
        }
    .style9
    {
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
    <table align="center" cellpadding="4" cellspacing="0" class="">
        <tr>
            <td class="" rowspan="7">
                <strong><span class="style9">Contact Us</span></strong><br />
                <br />
                Flighabetalls Registration
                <br />
                Should you need to reach out to the Customers 
                <br />
                Relations team for any grievance 
                redressal.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                <br />
                <br />
                Email us at: <a href="mailto:cusstrelations@gdc.com">cusstrelations@gdc.com</a>
                <br />
                Call Us at: +91 9834800529<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                OR<br />
&nbsp;Call US at: +91 7083153860
                <br />
                <br />
                <strong>Grievance Redressal Procedure </strong>
                <br />
                For any grievance or query please fill the
                <br />
                Grievance Redressal Procedure Form<br />
                <br />
                <strong>Related Links</strong><br />
                Travel Agency_ Henav Tours And Travels</td>
            <td colspan="2" class="style9">
                <strong>Grivance Redressal Procedure Form 
                <hr />
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                EmialID</td>
            <td>
                <asp:TextBox ID="txtemailid" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Contact No</td>
            <td>
                <asp:TextBox ID="txtcno" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Subject</td>
            <td>
                <asp:TextBox ID="txtsubject" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Message</td>
            <td>
                <asp:TextBox ID="txtmessage" runat="server" Height="82px" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnsend" runat="server" BackColor="#FF9900" ForeColor="White" 
                    Height="35px" onclick="btnsend_Click" Text="Send" Width="170px" 
                    BorderStyle="None" Font-Bold="True" />
            </td>
        </tr>
    </table>
<br />
<br />
<br />
</asp:Content>

