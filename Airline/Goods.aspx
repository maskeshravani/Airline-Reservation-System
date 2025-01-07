<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Goods.aspx.cs" Inherits="Airline_Goods" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style12
        {
            text-align: center;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style2">
        <tr>
            <td colspan="2" style="font-weight: 700;" class="style12">
                Goods</td>
        </tr>
        <tr>
            <td>
                Pass Number</td>
            <td>
                <asp:TextBox ID="txtpassnumber" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Goods Name</td>
            <td>
                <asp:TextBox ID="txtgoodsname" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Weight</td>
            <td>
                <asp:TextBox ID="txtweight" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Name Of Customer</td>
            <td>
                <asp:TextBox ID="txtnameofcustomer" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Delivery Address</td>
            <td>
                <asp:TextBox ID="txtdeliveryaddress" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Receiver Phone</td>
            <td>
                <asp:TextBox ID="txtreceiverphone" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Receiver Email</td>
            <td>
                <asp:TextBox ID="txtreceiveremail" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#336699" ForeColor="White" 
                    Height="30px" onclick="btnsubmit_Click" Text="Submit" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BackColor="#336699" ForeColor="White" 
                    Height="30px" onclick="btncancel_Click" Text="Cancel" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>

