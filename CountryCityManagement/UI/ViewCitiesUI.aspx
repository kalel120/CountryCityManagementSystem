<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCitiesUI.aspx.cs" Inherits="CountryCityManagement.UI.ViewCitiesUI" ValidateRequest="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Cities</title>
    <style>
        body {
            background-image: url("../FrontEnd/images/view_city.jpg");
            background-position: 0% 0%;
            background-size: 1500px;
            background-attachment: fixed;
}
        }
    </style>
    <%--<link href="../CSS/resetCSS.css" rel="stylesheet" />--%>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 505px">

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="View Cities"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="searchPanel" runat="server" BackColor="#FFF8F0" BorderColor="#FFDDBB" BorderStyle="Solid" Height="182px" Style="margin-left: 155px" Width="612px">
                <asp:Label ID="Label2" runat="server" Text="Search Criteria" Font-Bold="True" Font-Size="Large"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="cityNameRadioButton" runat="server" GroupName="RadioButton" Font-Size="Large" Text="City Name" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="serachTextBox" runat="server" Font-Size="Medium" Style="margin-left: 0px" Width="163px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="countryRadioButton" runat="server" GroupName="RadioButton" Font-Size="Large" Text="Country" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="countryDropDownList" runat="server" Font-Size="Medium" Height="25px" Style="margin-bottom: 0px" Width="171px">
          
               <%-- <asp:ListItem Text="Select Country"  Value="0"></asp:ListItem>--%>
          
            </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="searchButton" runat="server" Font-Bold="True" Font-Size="Medium" Text="Search" Width="117px" OnClick="searchButton_Click" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="homeButton" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="homeButton_Click" Text="Home" Width="117px" />
            </asp:Panel>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="messageLabel" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="gridPanel" runat="server" Height="185px" Style="margin-left: 84px" Width="775px" BackColor="#FFF0E1" BorderColor="#FFDCB9" BorderStyle="Solid">
                <asp:GridView ID="viewCitiesGridView" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateColumns="False" Font-Size="Small" Height="159px" Style="margin-left: 24px; margin-top: 11px;" Width="736px" AllowPaging="True" OnPageIndexChanging="viewCitiesGridView_PageIndexChanging" PageSize="2">
                    <Columns>
                        <asp:TemplateField HeaderText="SL#">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("SL")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="City Name">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("CityName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="About">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("AboutCity")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="No. Of Dwellers">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("NoOfDwellers")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Location">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Location")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Weather">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Weather")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Country">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("CountryName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="About Country">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("AboutCountry")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </asp:Panel>

        </div>
    </form>
</body>
</html>
