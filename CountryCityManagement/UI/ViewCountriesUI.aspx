<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCountriesUI.aspx.cs" Inherits="CountryCityManagement.UI.ViewCountriesUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 512px">
    <form id="form1" runat="server">
        <div>

            <asp:Panel ID="Panel1" runat="server" Height="502px" Font-Bold="True" Font-Names="Viw Countries" Font-Size="Large" ForeColor="Black">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="View Countries"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Panel ID="Panel2" runat="server" BackColor="#E9E9E9" BorderColor="#FFCC99" BorderStyle="Double" Font-Bold="True" Font-Names="Search Criteria" Font-Size="Large" Height="109px" Style="margin-left: 197px" Width="549px">
                    <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black" Text="Search Criteria"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Name :"></asp:Label>
                    &nbsp;&nbsp;
                <asp:TextBox ID="searchTextBox" runat="server" Font-Size="Large" Width="164px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="searchButton" runat="server" Font-Bold="True" Font-Size="Medium" Text="Search" Width="116px" />
                </asp:Panel>
                <br />
                <br />
                <asp:Panel ID="gridViewPanel" runat="server" BackColor="#E8E8E8" BorderColor="#FFE8E8" BorderStyle="Solid" Height="210px" Style="margin-left: 42px" Width="842px">
                    <asp:GridView ID="viewCountriesGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="183px" Width="759px" style="margin-left: 45px">
                        <Columns>
                            <asp:TemplateField HeaderText="Sl#">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%#Eval("SL")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="About">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%#Eval("About")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="No. Of Cities">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%#Eval("NoOfCities")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                              <asp:TemplateField HeaderText="No. Of City Dwellers">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%#Eval("NoOfCityDwellers")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </asp:Panel>

            </asp:Panel>

        </div>
    </form>
</body>
</html>
