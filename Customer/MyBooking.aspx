<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="MyBooking.aspx.cs" Inherits="Customer_MyBooking" %>

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
                            Retrive Booking<br />
                            <br /><span class="style10">Enter PNR No :</span></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtusername" runat="server" placeholder="Enter PNR No" 
                    Height="40px" Width="300px" CssClass="style11"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtpassword" runat="server" Height="40px" Width="300px" placeholder="Enter Email"
                    TextMode="Password" CssClass="style11" Visible="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <asp:Button ID="btnlogin" runat="server" BackColor="#FF9933" ForeColor="White" 
                    Height="40px" Text="View Booking" Width="220px" style="border-radius:10px;"
                    BorderStyle="None" Font-Bold="True" onclick="btnlogin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/view booking.png" 
                    Height="400px" Width="550px" />
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="PNR_no" HeaderText="PNR_no" 
                SortExpression="PNR_no" />
            <asp:BoundField DataField="Starting_Place" HeaderText="Starting_Place" 
                SortExpression="Starting_Place" />
            <asp:BoundField DataField="Ending_Place" HeaderText="Ending_Place" 
                SortExpression="Ending_Place" />
            <asp:BoundField DataField="Flight_ID" HeaderText="Flight_ID" 
                SortExpression="Flight_ID" />
            <asp:BoundField DataField="Flight_nm" HeaderText="Flight_nm" 
                SortExpression="Flight_nm" />
            <asp:BoundField DataField="Ticket_Price" HeaderText="Ticket_Price" 
                SortExpression="Ticket_Price" />
            <asp:BoundField DataField="Date_Of_Journey" HeaderText="Date_Of_Journey" 
                SortExpression="Date_Of_Journey" />
            <asp:BoundField DataField="No_Of_Ticket" HeaderText="No_Of_Ticket" 
                SortExpression="No_Of_Ticket" />
            <asp:BoundField DataField="Total_Price" HeaderText="Total_Price" 
                SortExpression="Total_Price" />
            <asp:BoundField DataField="Customer_nm" HeaderText="Customer_nm" 
                SortExpression="Customer_nm" />
            <asp:BoundField DataField="Aadhar_no" HeaderText="Aadhar_no" 
                SortExpression="Aadhar_no" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT DISTINCT * FROM [Ticket_Reservation] WHERE (([PNR_no] = @PNR_no) AND ([Customer_nm] = @Customer_nm))">
        <SelectParameters>
            <asp:SessionParameter Name="PNR_no" SessionField="fid" Type="Int32" />
            <asp:SessionParameter Name="Customer_nm" SessionField="User" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

