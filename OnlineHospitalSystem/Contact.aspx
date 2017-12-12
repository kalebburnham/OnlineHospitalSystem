<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Contact Information</h3>
    <address>
        Online Hospital<br />
        Redwood, WA 98452-63578<br />
        <abbr title="Phone">P:</abbr>
        445.555.0510
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@ohs.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@ohs.com</a>
    </address>
</asp:Content>