<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp; <%: Title %>&nbsp;Online Hospital System(OHS)</h2>
<p>&nbsp;</p>
<p>
    The Online Hospital System (OHS) is a web-based application to simplify out-of-hospital interactions between doctors and their patients. It includes a messaging system between doctors and patients as well as the ability to manage prescriptions, schedule appointments, and upload/access medical records. Both types of users need to login to the system. However, users&#39; accounts are created by the hospital so there is no need for individual registration.
</p>
<p>
    Doctors are able to send messages to their patients, upload their test results, and access a patient&#39;s medical records. Patients are able to send messages to their doctor, schedule appointments, request prescriptions, and access their test results after they have been uploaded.
</p>
</asp:Content>