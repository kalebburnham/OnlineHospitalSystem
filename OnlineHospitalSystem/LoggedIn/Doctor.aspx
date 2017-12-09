<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor.aspx.cs" Inherits="LoggedIn_Doctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Welcome, doc.<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Message" />
        <br />
        </div>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View Messages" />
    </form>
</body>
</html>
