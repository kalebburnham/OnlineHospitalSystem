<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewMessages.aspx.cs" Inherits="LoggedIn_ViewMessages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        View Messages</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="FROM" HeaderText="FROM" SortExpression="FROM" />
                <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Date], [FROM], [Text] FROM [Email] WHERE ([TO] = @TO)">
            <SelectParameters>
                <asp:SessionParameter Name="TO" SessionField="Name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
