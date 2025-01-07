<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="Reservation.aspx.cs" Inherits="Customer_Reservation" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
          
        }
        .style3
        {
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
        .style9
        {
            font-size: x-large;
        }
        .style10
        {
            width: 221px;
        }
        .style11
        {
            width: 228px;
        }
        .style12
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3" cellspacing="0" class="" width="70%">
        <tr>
            <td colspan="4">
                <span class="style9">Booking Form</span><hr />
            </td>
        </tr>
        <tr>
            <td class="">
                PNR NO</td>
            <td class="">
                <asp:TextBox ID="txtpnrno" runat="server" Enabled="False" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                Date of journey</td>
            <td>
                <asp:TextBox ID="txtdateofjourney" runat="server" Enabled="False" Height="30px" 
                    Width="200px"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtdateofjourney_CalendarExtender" 
                    runat="server" BehaviorID="txtdateofjourney_CalendarExtender" 
                    TargetControlID="txtdateofjourney">
                </ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="">
                Customer Name</td>
            <td class="style4">
                <asp:TextBox ID="txtcustnm" runat="server" Height="30px" 
                    Width="200px" Enabled="False"></asp:TextBox>
            </td>
            <td>
                Aadhar No</td>
            <td>
                <asp:TextBox ID="txtaadharno" runat="server" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Flight Name</td>
            <td class="">
                <asp:TextBox ID="txtflightname" runat="server" Enabled="False" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                Number Of Ticket</td>
            <td>
                <asp:TextBox ID="txtnumberofticket" runat="server" Height="30px" 
                    Width="200px" Enabled="False" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="">
                Starting Place</td>
            <td class="style4">
                <asp:TextBox ID="txtstartingplace" runat="server" Enabled="False" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                Ending Place</td>
            <td>
                <asp:TextBox ID="txtendingplace" runat="server" Enabled="False" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="">
                Ticket Price</td>
            <td class="style4">
                <asp:TextBox ID="txtticketprice" runat="server" Enabled="False" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                Total Price</td>
            <td>
                <asp:TextBox ID="txttotalprice" runat="server" Enabled="False" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="" colspan="4">
                <table align="center" cellpadding="3" cellspacing="0" width="100%">
                    <tr>
                        <td colspan="4" style="text-align: left" class="style9">
                            Payment Details<hr />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Payment ID</td>
                        <td>
                            <asp:TextBox ID="txtpaymentid" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            Payment Date</td>
                        <td class="style11">
                            <asp:TextBox ID="txtpaymentdate" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="txtpaymentdate_CalendarExtender" 
                                runat="server" BehaviorID="txtpaymentdate_CalendarExtender" 
                                TargetControlID="txtpaymentdate" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Card No</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            CVV</td>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Expiration</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            Amount</td>
                        <td class="style11">
                            <asp:TextBox ID="txtamount" runat="server" Height="30px" Width="200px" 
                                ontextchanged="txtamount_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Gst</td>
                        <td>
                            <asp:Label ID="lblGst" runat="server" Text="12" ForeColor="Red"></asp:Label>
                            <span class="style12">%</span></td>
                        <td>
                            Total Amount</td>
                        <td class="style11">
                            <asp:TextBox ID="txttotalamount" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <asp:Label ID="Label5" runat="server" Text="Customer Name" Visible="False"></asp:Label>
                        </td>
                        <td style="color: #FF0000">
                            <asp:TextBox ID="txtcustomername" runat="server" Height="30px" Width="200px" 
                                ontextchanged="txtcustomername_TextChanged" Visible="False"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Booking ID"></asp:Label>
                        </td>
                        <td class="style11">
                            <asp:TextBox ID="txtbookingid" runat="server" Height="30px" Width="200px">0</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Payment Mode</td>
                        <td style="color: #FF0000">
                            <asp:RadioButton ID="rdonline" runat="server" AutoPostBack="True" GroupName="a" 
                                oncheckedchanged="rdonline_CheckedChanged" Text="Online Payment" />
&nbsp;&nbsp;
                            <asp:RadioButton ID="rdUPI" runat="server" AutoPostBack="True" GroupName="a" 
                                oncheckedchanged="rdUPI_CheckedChanged" Text="UPI" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="">
                            <asp:Panel ID="Panel2" runat="server" Visible="False">
                                Bank Name:<asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>SBI</asp:ListItem>
                                    <asp:ListItem>HDFC</asp:ListItem>
                                    <asp:ListItem>KOTAK</asp:ListItem>
                                    <asp:ListItem>AXIS</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                Card No:
                                <asp:TextBox ID="txtcardno" runat="server" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                                CVV:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtcvv" runat="server" Height="30px" 
                                    ontextchanged="txtcvv_TextChanged" Width="200px"></asp:TextBox>
                                <br />
                                Expiry Date:&nbsp;
                                <asp:TextBox ID="txtexpiration" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            </asp:Panel>
                        </td>
                        <td class="">
                            <asp:Panel ID="Panel3" runat="server" Visible="False">
                                <asp:Image ID="Image10" runat="server" Height="150px" Width="191px" 
                                    ImageUrl="~/Images/upi.jpeg" />
                            </asp:Panel>
                        </td>
                        <td class="" colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
                </td>
        </tr>
        <tr>
            <td class="" colspan="4">
                <asp:Button ID="btnbooknow" runat="server" BackColor="#FF9933" 
                    ForeColor="White" onclick="btnbooknow_Click" Text="Book Now" 
                    BorderStyle="None" Font-Bold="True" Height="35px" Width="180px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnprint" runat="server" BackColor="#FF9933" ForeColor="White" 
                    Height="35px" onclick="btnprint_Click" Text="Print Bill" Width="180px" 
                    BorderStyle="None" />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                    AutoDataBind="true" />
                <br />
                </td>
        </tr>
    </table>
</asp:Content>

