<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="payinvice.aspx.cs" Inherits="Customer_payinvice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="4" class="style1">
        <tr>
            <td colspan="2" style="font-weight: 700">
                Accepted cards</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" Height="105px" 
                    ImageUrl="~/Images/Bank.jpg" Width="143px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" Height="104px" 
                    ImageUrl="~/Images/IMG-20240131-WA0006.jpg" Width="144px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" Height="105px" 
                    ImageUrl="~/Images/Trustco Bank.jpg" Width="144px" />
&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image4" runat="server" Height="104px" 
                    ImageUrl="~/Images/SBI.jpg" style="margin-right: 3px" Width="143px" />
&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image5" runat="server" Height="104px" 
                    ImageUrl="~/Images/HDFC Bank.jpg" Width="142px" />
&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image6" runat="server" Height="104px" 
                    ImageUrl="~/Images/ALAT.jpg" style="margin-bottom: 0px" Width="144px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Card Number</td>
            <td class="style2">
                <asp:TextBox ID="txtcardnumber" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Expiration</td>
            <td>
                CVV</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtexpiration" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtcvv" runat="server" Height="30px" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image7" runat="server" Height="58px" ImageUrl="~/Images/CVV.jpg" 
                    Width="105px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnpay" runat="server" BackColor="#336699" ForeColor="White" 
                    Height="30px" onclick="btnpay_Click" Text="Pay" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BackColor="#336699" ForeColor="White" 
                    Height="30px" onclick="btncancel_Click" Text="Cancel" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>

