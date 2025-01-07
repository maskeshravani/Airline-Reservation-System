<%@ Page Title="" Language="C#" MasterPageFile="~/Airline/AirlineMaster.master" AutoEventWireup="true" CodeFile="manageflightdetails.aspx.cs" Inherits="Airline_manageflightdetails" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
     
    }
        .style5
        {
       
        }
        .style12
        {
          
        }
        .style13
        {
          
        }
        .style14
        {
          
        }
        .style15
        {
         
        }
        .style16
        {
         
        }
        .style17
        {
           
        }
        .style18
        {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" cellspacing="0" class="" 
        style="font-family: Arial, Helvetica, sans-serif">
    <tr>
        <td>
            <table align="center" width="80%">
                <tr>
                    <td colspan="2" style="font-weight: 700" class="style18">
                        Add Flight Details</td>
                </tr>
                <tr>
                    <td >
                        Comapany Name</td>
                    <td>
                        <asp:DropDownList ID="drpcompanyname" runat="server" Height="30px" 
                            Width="200px" AutoPostBack="True" DataSourceID="SqlDataSource1" 
                            DataTextField="Company_Name" DataValueField="Company_Name">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="drpcompanyname" ErrorMessage="Enter company name" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            SelectCommand="SELECT DISTINCT [Company_Name] FROM [Flight_Details] WHERE ([Company_Name] = @Company_Name)">
                            <SelectParameters>
                                <asp:SessionParameter Name="Company_Name" SessionField="User" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        Flight No.</td>
                    <td>
                        <asp:DropDownList ID="drpflightno" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="Flight_Number" 
                            DataValueField="Flight_Number" Height="30px" Width="200px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="drpflightno" ErrorMessage="Enter flight no" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [Flight_Number] FROM [Flight_Details] WHERE ([Company_Name] = @Company_Name)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="drpcompanyname" Name="Company_Name" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        From City</td>
                    <td>
                        <asp:DropDownList ID="drpfromcity" runat="server" Height="30px" Width="200px">
                            <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>New Delhi</asp:ListItem>
                            <asp:ListItem>Ahmedabad</asp:ListItem>
                            <asp:ListItem>Hyderabad</asp:ListItem>
                            <asp:ListItem>Kochi</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Bengaluru</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Patna</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Kolkata</asp:ListItem>
                            <asp:ListItem>Kerala</asp:ListItem>
                            <asp:ListItem>Nagpur</asp:ListItem>
                            <asp:ListItem>Indore</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="drpfromcity" ErrorMessage="Select starting place" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        To City</td>
                    <td class="style9">
                        <asp:DropDownList ID="drptocity" runat="server" Height="30px" Width="200px">
                            <asp:ListItem>New Delhi</asp:ListItem>
                            <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Ahmedabad</asp:ListItem>
                            <asp:ListItem>Hyderabad</asp:ListItem>
                            <asp:ListItem>Kochi</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Bengaluru</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Patna</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Kolkata</asp:ListItem>
                            <asp:ListItem>Kerala</asp:ListItem>
                            <asp:ListItem>Jaipur</asp:ListItem>
                            <asp:ListItem>Ranchi</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="drptocity" ErrorMessage="Select ending place" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        Date</td>
                    <td>
                        <asp:TextBox ID="txtdate" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
                            BehaviorID="txtdate_CalendarExtender" TargetControlID="txtdate">
                        </ajaxToolkit:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtdate" ErrorMessage="Enter date" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        Departure Time</td>
                    <td>
                        <asp:DropDownList ID="drpdeparturetime" runat="server" Height="30px" 
                            Width="200px">
                            <asp:ListItem>12am</asp:ListItem>
                            <asp:ListItem>1am</asp:ListItem>
                            <asp:ListItem>2am</asp:ListItem>
                            <asp:ListItem>3am</asp:ListItem>
                            <asp:ListItem>4am</asp:ListItem>
                            <asp:ListItem>5am</asp:ListItem>
                            <asp:ListItem>6am</asp:ListItem>
                            <asp:ListItem>7am</asp:ListItem>
                            <asp:ListItem>8am</asp:ListItem>
                            <asp:ListItem>9am</asp:ListItem>
                            <asp:ListItem>10am</asp:ListItem>
                            <asp:ListItem>11am</asp:ListItem>
                            <asp:ListItem>12pm</asp:ListItem>
                            <asp:ListItem>1pm</asp:ListItem>
                            <asp:ListItem>2pm</asp:ListItem>
                            <asp:ListItem>3pm</asp:ListItem>
                            <asp:ListItem>4pm</asp:ListItem>
                            <asp:ListItem>5pm</asp:ListItem>
                            <asp:ListItem>6pm</asp:ListItem>
                            <asp:ListItem>7pm</asp:ListItem>
                            <asp:ListItem>8pm</asp:ListItem>
                            <asp:ListItem>9pm</asp:ListItem>
                            <asp:ListItem>10pm</asp:ListItem>
                            <asp:ListItem>11pm</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="drpdeparturetime" ErrorMessage="Select Departure date" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        Arrival Time</td>
                    <td>
                        <asp:DropDownList ID="drparrivaltime" runat="server" Height="30px" 
                            Width="200px">
                            <asp:ListItem>12am</asp:ListItem>
                            <asp:ListItem>1am</asp:ListItem>
                            <asp:ListItem>2am</asp:ListItem>
                            <asp:ListItem>3am</asp:ListItem>
                            <asp:ListItem>4am</asp:ListItem>
                            <asp:ListItem>5am</asp:ListItem>
                            <asp:ListItem>6am</asp:ListItem>
                            <asp:ListItem>7am</asp:ListItem>
                            <asp:ListItem>8am</asp:ListItem>
                            <asp:ListItem>9am</asp:ListItem>
                            <asp:ListItem>10am</asp:ListItem>
                            <asp:ListItem>11am</asp:ListItem>
                            <asp:ListItem>12pm</asp:ListItem>
                            <asp:ListItem>1pm</asp:ListItem>
                            <asp:ListItem>2pm</asp:ListItem>
                            <asp:ListItem>3pm</asp:ListItem>
                            <asp:ListItem>4pm</asp:ListItem>
                            <asp:ListItem>5pm</asp:ListItem>
                            <asp:ListItem>6pm</asp:ListItem>
                            <asp:ListItem>7pm</asp:ListItem>
                            <asp:ListItem>8pm</asp:ListItem>
                            <asp:ListItem>9pm</asp:ListItem>
                            <asp:ListItem>10pm</asp:ListItem>
                            <asp:ListItem>11pm</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="drparrivaltime" ErrorMessage="Select arrival time" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        Flight Types</td>
                    <td>
                        <asp:DropDownList ID="drpflighttype1" runat="server" Height="30px" 
                            Width="200px" AutoPostBack="True">
                            <asp:ListItem>First Class</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;
                        <asp:DropDownList ID="drpflighttype2" runat="server" Height="30px" 
                            Width="200px" AutoPostBack="True">
                            <asp:ListItem>Economy</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="drpflighttype3" runat="server" Height="30px" 
                            Width="200px" AutoPostBack="True">
                            <asp:ListItem>Business</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        Available Seats</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource4" DataTextField="First_Class_Capacity" 
                            DataValueField="First_Class_Capacity">
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource5" DataTextField="Economy_Capacity" 
                            DataValueField="Economy_Capacity">
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource6" DataTextField="Business_Capacity" 
                            DataValueField="Business_Capacity">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [Business_Capacity] FROM [Flight_Details] WHERE (([Company_Name] = @Company_Name) AND ([Flight_Number] = @Flight_Number))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="drpcompanyname" Name="Company_Name" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="drpflightno" Name="Flight_Number" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [Economy_Capacity] FROM [Flight_Details] WHERE (([Company_Name] = @Company_Name) AND ([Flight_Number] = @Flight_Number))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="drpcompanyname" Name="Company_Name" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="drpflightno" Name="Flight_Number" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [First_Class_Capacity] FROM [Flight_Details] WHERE (([Company_Name] = @Company_Name) AND ([Flight_Number] = @Flight_Number))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="drpcompanyname" Name="Company_Name" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="drpflightno" Name="Flight_Number" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="style16">
                        Travel Duration</td>
                    <td class="style13">
                        <asp:TextBox ID="txttravelduration" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txttravelduration" ErrorMessage="Enter travel duration" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        Airport Name</td>
                    <td>
                        <asp:TextBox ID="txtairportname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtairportname" ErrorMessage="enter airport name" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        Ticket Price</td>
                    <td>
                        <asp:TextBox ID="txtticketprice" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtticketprice" ErrorMessage="Enter ticket price" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style17">
                        Description<asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td class="style12">
                        <asp:TextBox ID="txtdescription" runat="server" Height="72px" Width="200px" 
                            TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtdescription" ErrorMessage="Enter description" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style14">
                        <asp:Button ID="btnsave" runat="server" BackColor="#336699" ForeColor="White" 
                            Height="30px" onclick="btnsave_Click" Text="Save" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnupdate" runat="server" BackColor="#336699" ForeColor="White" 
                            Height="30px" onclick="btnupdate_Click" Text="Update" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:Button ID="delete" runat="server" BackColor="#336699" ForeColor="White" 
                            Height="30px" onclick="delete_Click" Text="Delete" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnreset" runat="server" BackColor="#336699" ForeColor="White" 
                            Height="30px" Text="Reset" Width="150px" onclick="btnreset_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource3" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
                            PageSize="5">
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
                                <asp:BoundField DataField="businessavialableseat" HeaderText="businessavialableseat" 
                                    SortExpression="businessavialableseat" />
                                <asp:BoundField DataField="TravelDuration" HeaderText="TravelDuration" 
                                    SortExpression="TravelDuration" />
                                <asp:BoundField DataField="AirportName" HeaderText="AirportName" 
                                    SortExpression="AirportName" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="Description" HeaderText="Description" 
                                    SortExpression="Description" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Add_Flight_Details]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

