<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCountryUI.aspx.cs" Inherits="CountryCityManagement.UI.ViewCountryUI" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>View Countries</title>
    <link href="../FrontEnd/css/viewCountryStyle.css" rel="stylesheet" />
    <style type="text/css">
        .inputPanel {
            width: 600px;
            margin-left: 8px;
        }

        .gridviewClass {
            width: 600px;
            height: 182px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="inputPanel">
                <asp:Panel ID="searchPanel" runat="server" BackColor="#FFF3E8" BorderColor="#FF9966" BorderStyle="Double" Height="178px" Style="margin-left: 0px" Width="579px">
                    <asp:Label ID="Label2" runat="server" Text="Search Criteria" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                    <br/>
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Name" Font-Bold="True"></asp:Label>
                    <div class="nameInput">
                        <asp:TextBox ID="countrySearchTextBox" runat="server" BorderColor="#FFB693" BorderStyle="Solid" Font-Size="Large"></asp:TextBox>
                    </div>
                    <asp:Button ID="searchButton" runat="server" Font-Bold="True" Font-Size="Medium" Text="Search" Width="136px" OnClick="searchButton_Click" />
                    <br />
                    <asp:Button ID="homeButton" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="homeButton_Click" Text="Home" />
                </asp:Panel>
            </div>
            <br />
            <br />
            <asp:Label ID="messageLabel" runat="server" BackColor="#FFA851" Font-Size="Large"></asp:Label>
            <br />
            <div class="gridviewClass">
                <asp:GridView ID="countryGridView" runat="server" AutoGenerateColumns="False" Style="margin-left: 0px; margin-top: 20px" Width="597px" AllowPaging="True" PageSize="2" OnPageIndexChanging="countryGridView_PageIndexChanging" Height="143px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:TemplateField HeaderText="SL#">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("SL") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="About">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("About") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="No. Of Cities">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("NoOfCities") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="No. Of City Dwellers">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("NoOfCityDwellers") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BorderColor="#FF9966" BorderStyle="Dotted" BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
