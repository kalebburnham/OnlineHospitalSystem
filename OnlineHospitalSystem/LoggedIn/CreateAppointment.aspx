<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateAppointment.aspx.cs" Inherits="LoggedIn_Appointments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Manage Appointments<br />
        <br />
        Select City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="City" DataTextField="City" DataValueField="City">
        </asp:DropDownList>
        <asp:SqlDataSource ID="City" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [City] FROM [Hospital]"></asp:SqlDataSource>
        <br />
        Select Hospital:&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Hospital" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Hospital" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Hospital]"></asp:SqlDataSource>
        <br />
        <br />
        Select Doctor:&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="Doctors" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Doctors" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Doctor]"></asp:SqlDataSource>
        <br />
        <br />
        Select Date:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; MM:DD:YY<br />
        <br />
        Enter Time:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>AM</asp:ListItem>
            <asp:ListItem>PM</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Description:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Create New Appointment" />
    
    </div>
    </form>
</body>
</html>
