<%@ Page Title="" Language="C#" MasterPageFile="~/Airline/AirlineMaster.master" AutoEventWireup="true" CodeFile="ManageProfile.aspx.cs" Inherits="Airline_ManageProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="4" class="style2">
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="Company_ID" DataSourceID="SqlDataSource1" Height="50px" 
                    Width="125px" onpageindexchanging="DetailsView1_PageIndexChanging">
                    <Fields>
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
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" 
                            SortExpression="password" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT * FROM [Company_Registration] WHERE ([username] = @username)" UpdateCommand="update Registration set[Company_nm]=@Company_nm,[Email_ID]=@Email_ID,[Website]=@Website,[Contact_no]=@Contact_no,[username]=@username,[password]=@password where [Company_ID]=@Company_ID">

                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="User" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Company_nm" />
                        <asp:Parameter Name="Email_ID" />
                        <asp:Parameter Name="Website" />
                        <asp:Parameter Name="Contact_no" />
                        <asp:Parameter Name="username" />
                        <asp:Parameter Name="password" />
                        <asp:Parameter Name="Company_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

