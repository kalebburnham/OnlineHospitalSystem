<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Messaging.aspx.cs" Inherits="LoggedIn_Messaging" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Messaging<br />
        <br />
        To:
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Patients" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Patients" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Patient]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Doctors" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Doctor]"></asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
