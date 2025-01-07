<%@ Page Title="" Language="C#" MasterPageFile="~/Airline/AirlineMaster.master" AutoEventWireup="true" CodeFile="ViewBooking.aspx.cs" Inherits="Airline_ViewBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>

