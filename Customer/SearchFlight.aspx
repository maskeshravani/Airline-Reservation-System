<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="SearchFlight.aspx.cs" Inherits="Customer_SearchFlight" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            height: 81px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3" cellspacing="0" class="style5">
        <tr>
            <td colspan="2" style="text-align: center; font-weight: 700">
                Flight Details</td>
            <td style="text-align: center; font-weight: 700">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:RadioButton ID="rdradio" runat="server" GroupName="A" Text="One Way" 
                    AutoPostBack="True" oncheckedchanged="rdradio_CheckedChanged" />
            </td>
            <td style="text-align: center">
                <asp:RadioButton ID="rdroundtrip" runat="server" GroupName="A" Text="Two Way" 
                    AutoPostBack="True" oncheckedchanged="rdroundtrip_CheckedChanged" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                From</td>
            <td class="style9">
                To</td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:DropDownList ID="drpstart" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Start_place" 
                    DataValueField="Start_place" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Start_place] FROM [Add_Flight_Details]">
                </asp:SqlDataSource>
            </td>
            <td class="style12">
                <asp:DropDownList ID="drpend" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Destination_place" 
                    DataValueField="Destination_place" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Destination_place] FROM [Add_Flight_Details]">
                </asp:SqlDataSource>
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style9">
                Depart</td>
            <td class="style9">
                <asp:Label ID="lbldepart" runat="server" Text="Return"></asp:Label>
            </td>
            <td class="style9">
                Class</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtdepart" runat="server" Height="30px" 
                    Width="200px"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtdepart_CalendarExtender" runat="server" 
                    BehaviorID="txtdepart_CalendarExtender" TargetControlID="txtdepart">
                </ajaxToolkit:CalendarExtender>
            </td>
            <td>
                <asp:TextBox ID="txtreturn" runat="server" Height="30px"  
                    Width="200px"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtreturn_CalendarExtender" runat="server" 
                    BehaviorID="txtreturn_CalendarExtender" TargetControlID="txtreturn">
                </ajaxToolkit:CalendarExtender>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                <asp:DropDownList ID="drpclass" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Flight_Types" 
                    DataValueField="Flight_Types" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Flight_Types] FROM [Add_Flight_Details]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Passenger</td>
            <td class="style9">
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
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
                    <asp:ListItem>18</asp:ListItem>
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
&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                </td>
            <td>
                <asp:Button ID="btnsearchflight" runat="server" BackColor="Black" 
                    ForeColor="White" onclick="btnsearchflight_Click" Text="Search Flight" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource4" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
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
                        <asp:BoundField DataField="Flight_Types" HeaderText="Flight_Types" 
                            SortExpression="Flight_Types" />
                        <asp:BoundField DataField="TravelDuration" HeaderText="TravelDuration" 
                            SortExpression="TravelDuration" />
                        <asp:BoundField DataField="AirportName" HeaderText="AirportName" 
                            SortExpression="AirportName" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Add_Flight_Details] WHERE (([Start_place] = @Start_place) AND ([Destination_place] = @Destination_place) AND ([Flight_Types] = @Flight_Types))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpstart" Name="Start_place" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="drpend" Name="Destination_place" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="drpclass" Name="Flight_Types" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

