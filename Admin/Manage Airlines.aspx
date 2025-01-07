<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manage Airlines.aspx.cs" Inherits="Admin_Manage_Airlines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="Company_ID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Company_ID" HeaderText="Company_ID" ReadOnly="True" 
            SortExpression="Company_ID" />
        <asp:BoundField DataField="Company_nm" HeaderText="Company_nm" 
            SortExpression="Company_nm" />
        <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" 
            SortExpression="Email_ID" />
        <asp:BoundField DataField="Website" HeaderText="Website" 
            SortExpression="Website" />
        <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" 
            SortExpression="Contact_no" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [Company_ID], [Company_nm], [Email_ID], [Website], [Contact_no] FROM [Company_Registration]" DeleteCommand=" delete from [Company_Registration] where [Company_ID]=@Company_ID">
</asp:SqlDataSource>
</asp:Content>

