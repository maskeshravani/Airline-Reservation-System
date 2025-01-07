<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Customer_Home" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style9
        {
            width: 50%;
            
        
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/bg.jpg" 
        Height="480px" style="text-align: left" Width="100%">
    <br />
    <br />
        <br />
    <br />
    <table align="center" cellpadding="1" cellspacing="0" class="style9" style="opacity:0.9;" 
            bgcolor="#666666">
        <tr>
            <td style="text-align: left">
                    &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" cellpadding="4" class="style5">
                    <tr>
                        <td colspan="2" style="text-align: left; color: #FFFFFF">
                                Flight From</td>
                        <td colspan="2" style="color: #FFFFFF; text-align: left">
                                Flight To</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image8" runat="server" 
                                    ImageUrl="~/Images/icons8-flight-50 (1).png" Height="25px" Width="25px" />
                        </td>
                        <td>
                            <asp:DropDownList ID="drpstart" runat="server" BackColor="#CCCCCC" 
                                    Height="35px" Width="200px" AutoPostBack="True" 
                                DataSourceID="SqlDataSource1" DataTextField="Start_place" 
                                DataValueField="Start_place">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [Start_place] FROM [Add_Flight_Details]">
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Image ID="Image9" runat="server" 
                                    ImageUrl="~/Images/icons8-flight-50 (1).png" Height="25px" Width="25px" />
                        </td>
                        <td>
                            <asp:DropDownList ID="drpend" runat="server" BackColor="#CCCCCC" 
                                    Height="35px" Width="200px" DataSourceID="SqlDataSource2" 
                                DataTextField="Destination_place" DataValueField="Destination_place">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [Destination_place] FROM [Add_Flight_Details]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="color: #FFFFFF; text-align: left">
                                Depart</td>
                        <td colspan="2" style="color: #FFFFFF; text-align: left">
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image12" runat="server" Height="25px" 
                                    ImageUrl="~/Images/icons8-hotel-check-in-50.png" Width="25px" />
                        </td>
                        <td>
                            <asp:TextBox ID="txtdepart" runat="server" Height="35px" Width="200px" 
                                AutoPostBack="True" ></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: left; color: #FFFFFF">
                                Class</td>
                        <td colspan="2" style="text-align: left; color: #FFFFFF">
                                Travalers</td>
                    </tr>
                    <tr>
                        <td style="text-align: left; color: #FFFFFF">
                            &nbsp;</td>
                        <td style="text-align: left; color: #FFFFFF">
                            <asp:DropDownList ID="drpclass" runat="server" BackColor="#CCCCCC" 
                                Height="35px" Width="200px" AutoPostBack="True">
                                <asp:ListItem>First Class</asp:ListItem>
                                <asp:ListItem>Economy</asp:ListItem>
                                <asp:ListItem>Business</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [Flight_Types] FROM [Add_Flight_Details]">
                            </asp:SqlDataSource>
                        </td>
                        <td style="text-align: left; color: #FFFFFF">
                            &nbsp;</td>
                        <td style="text-align: left; color: #FFFFFF">
                            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCCCCC" 
                                Height="35px" Width="200px" AutoPostBack="True">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                                <asp:ListItem>32</asp:ListItem>
                                <asp:ListItem>33</asp:ListItem>
                                <asp:ListItem>34</asp:ListItem>
                                <asp:ListItem>35</asp:ListItem>
                                <asp:ListItem>36</asp:ListItem>
                                <asp:ListItem>37</asp:ListItem>
                                <asp:ListItem>38</asp:ListItem>
                                <asp:ListItem>39</asp:ListItem>
                                <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>41</asp:ListItem>
                                <asp:ListItem>42</asp:ListItem>
                                <asp:ListItem>43</asp:ListItem>
                                <asp:ListItem>44</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                                <asp:ListItem>46</asp:ListItem>
                                <asp:ListItem>47</asp:ListItem>
                                <asp:ListItem>48</asp:ListItem>
                                <asp:ListItem>49</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="text-align: center; color: #FFFFFF">
                            <asp:Button ID="Button2" runat="server" BackColor="#009933" BorderStyle="None" 
                                    ForeColor="White" Height="40px" 
                                style="border-radius:10px; font-weight: 700;" Text="Search" 
                                    Width="190px" onclick="Button2_Click" />
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Panel>
    <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource4" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Flight_no" HeaderText="Flight_no" 
                            SortExpression="Flight_no" />
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                            SortExpression="CompanyName" />
                        <asp:BoundField DataField="Start_place" HeaderText="Start_place" 
                            SortExpression="Start_place" />
                        <asp:BoundField DataField="Destination_place" HeaderText="Destination_place" 
                            SortExpression="Destination_place" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="DepartureTime" HeaderText="DepartureTime" 
                            SortExpression="DepartureTime" />
                        <asp:BoundField DataField="ArrivalTime" HeaderText="ArrivalTime" 
                            SortExpression="ArrivalTime" />
                    
                        <asp:BoundField DataField="firstclassavialableseat" HeaderText="firstclassavialableseat" 
                            SortExpression="firstclassavialableseat" />
                        <asp:BoundField DataField="economyavialableseat" HeaderText="economyavialableseat" 
                            SortExpression="economyavialableseat" />
                        <asp:BoundField DataField="businessavialableseat" 
                            HeaderText="businessavialableseat" SortExpression="businessavialableseat" />
                        <asp:BoundField DataField="TravelDuration" HeaderText="TravelDuration" 
                            SortExpression="TravelDuration" />
                        <asp:BoundField DataField="AirportName" HeaderText="AirportName" 
                            SortExpression="AirportName" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Add_Flight_Details] WHERE (([Start_place] = @Start_place) AND ([Destination_place] = @Destination_place))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpstart" Name="Start_place" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="drpend" Name="Destination_place" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="drpclass" Name="Flight_Types" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            <br />
</asp:Content>

