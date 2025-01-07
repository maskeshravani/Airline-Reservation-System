<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="Admin_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style12
    {
        width: 100%;
    }
    .style13
    {            text-align: center;
        }
    .style14
    {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table cellpadding="3" class="style12">
    <tr>
        <td class="style14">
            <strong style="30; font-size: 30px;">Report</strong></td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink8" runat="server" 
                NavigateUrl="~/Report/Addflightdetails.aspx">Add Flight Details Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink9" runat="server" 
                NavigateUrl="~/Report/CompanyRegistrationReport.aspx">Company Registration</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink10" runat="server" 
                NavigateUrl="~/Report/ComplaintsReport.aspx">Complaints Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink11" runat="server" 
                NavigateUrl="~/Report/Customer_RegistrationReport.aspx">Customer Registration Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink12" runat="server" 
                NavigateUrl="~/Report/EnquiryReport.aspx">Enquiry Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink13" runat="server" 
                NavigateUrl="~/Report/Feedbackreport.aspx">Feedback Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink14" runat="server" 
                NavigateUrl="~/Report/Flightdetailsreport.aspx">Fight Details Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink15" runat="server" 
                NavigateUrl="~/Report/GoodsReport.aspx">Goods Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink16" runat="server" 
                NavigateUrl="~/Report/PaymentReport.aspx">Payment Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink17" runat="server" 
                NavigateUrl="~/Report/Ticket_CancelationReport.aspx">Ticket Cancelation Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink18" runat="server" 
                NavigateUrl="~/Report/Ticket_ReservationReport.aspx">Ticket Reservation Report</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:HyperLink ID="HyperLink19" runat="server" 
                NavigateUrl="~/Report/BillReport.aspx">BillView</asp:HyperLink>
        </td>
    </tr>
</table>
</asp:Content>

