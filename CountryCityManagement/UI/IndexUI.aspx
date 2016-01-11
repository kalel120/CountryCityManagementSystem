<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexUI.aspx.cs" Inherits="CountryCityManagement.UI.IndexUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Index"></asp:Label>
        <br />
        <asp:LinkButton ID="countryEntryLinkButton" runat="server" Font-Size="Large" OnClick="countryEntryLinkButton_Click">Country Entry</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="cityEntryLinkButton" runat="server" Font-Size="Large" OnClick="cityEntryLinkButton_Click">City Entry</asp:LinkButton>
        <br />
        <br />
        <div>

            <asp:LinkButton ID="viewCountriesLinkButton" runat="server" Font-Size="Large" OnClick="viewCountriesLinkButton_Click">View Countries</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="viewCitiesLinkButton" runat="server" Font-Size="Large" OnClick="viewCitiesLinkButton_Click">View Cities</asp:LinkButton>
            <br />

        </div>
    </form>
</body>
</html>
