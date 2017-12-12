<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="text-left" style="font-size: 50px; color: #003399"><strong>ONLINE HOSPITAL SYSTEM</strong></h1>
        <p class="lead">&nbsp;</p>
        <p>
            Welcome to Online Hospital System!</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Image ID="Image1" runat="server" DescriptionUrl="~/About.aspx" ImageUrl="~/Images/hospital1.jpg" Width="1103px" />
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
        </div>
    </div>
</asp:Content>
