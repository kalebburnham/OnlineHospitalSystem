<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient.aspx.cs" Inherits="LoggedIn_Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Welcome, Patient.<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Message" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View Messages" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Create Appointment" />
        </div>
    </form>
</body>
</html>
