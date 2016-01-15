<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCountryUI.aspx.cs" Inherits="CountryCityManagement.UI.ViewCountryUI" ValidateRequest="false" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="UTF-8" />
    <title>View Countries</title>
    <link href="../FrontEnd/css/viewCountryStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <asp:Panel ID="searchPanel" runat="server" BackColor="#FFF3E8">
                <asp:Label ID="Label2" runat="server" Text="Search Criteria" Font-Bold="True" Font-Size="Large"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Name" Font-Bold="True"></asp:Label>
                <div class="nameInput">
                    <asp:TextBox ID="countrySearchTextBox" runat="server" Font-Size="Large"></asp:TextBox>
                </div>
                <asp:Button ID="searchButton" runat="server" Font-Bold="True" Font-Size="Medium" Text="Search" Width="136px" OnClick="searchButton_Click" />
                <br />
                <asp:Button ID="homeButton" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="homeButton_Click" Text="Home" />
            </asp:Panel>
            <br />
            <br />
            <asp:Label ID="messageLabel" runat="server" BackColor="#FFA851" Font-Size="Larger" Font-Bold="True"></asp:Label>
            <br />
            <div class="gridviewClass">
                <asp:GridView ID="countryGridView" runat="server" AutoGenerateColumns="False" Style="margin-left: 0px; margin-top: 20px" Width="994px" AllowPaging="True" PageSize="2" OnPageIndexChanging="countryGridView_PageIndexChanging" Height="143px" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" BorderStyle="None">
                    <AlternatingRowStyle BackColor="White" />
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
                    <FooterStyle BorderColor="#FF9966" BorderStyle="Dotted" BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
