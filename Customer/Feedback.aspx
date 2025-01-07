<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Customer_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 80%;
        }
        .style10
        {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" class="style9">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
    <table align="center" cellpadding="8" cellspacing="0" class="" align="center" 
                    style="width: 96%">
    <tr>
        <td colspan="2" style="font-weight: 700">
                <span class="style10">&nbsp;&nbsp;&nbsp;&nbsp; Feedback Form</span><hr />
        </td>
    </tr>
    <tr>
        <td>
                Customer Name</td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
                Email ID
            </td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
                Mobile No
            </td>
        <td>
            <asp:TextBox ID="txtmobileno" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
                Airline Company Company</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="CompanyName" 
                DataValueField="CompanyName" Height="21px" Width="197px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT [CompanyName] FROM [Add_Flight_Details]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
                Openion
            </td>
        <td>
            <asp:TextBox ID="txtopenion" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="btnsubmit" runat="server" BackColor="#FF9933" Font-Bold="True" 
                    ForeColor="White" Height="35px" onclick="btnsubmit_Click" Text="Submit" 
                    Width="180px" BorderStyle="None" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" BackColor="#FF9933" Font-Bold="True" 
                    ForeColor="White" Height="35px" onclick="btncancel_Click" Text="Cancel" 
                    Width="180px" BorderStyle="None" />
        </td>
    </tr>
</table>
            </td>
            <td>
                <asp:Image ID="Image9" runat="server" Height="400px" 
                    ImageUrl="~/Images/oti-travel-preloader.gif" Width="458px" />
            </td>
        </tr>
    </table>
</asp:Content>

