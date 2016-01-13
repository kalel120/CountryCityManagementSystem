<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCitiesUI.aspx.cs" Inherits="CountryCityManagement.UI.ViewCitiesUI" ValidateRequest="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>View Cities</title>
    <link href="../FrontEnd/css/viewCitiesStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <br />
            <br />
            <asp:Panel ID="searchPanel" runat="server" BackColor="#336699" BorderColor="#0066CC" BorderStyle="Solid" Height="219px" Style="margin-left: 15px" Width="655px">
                <asp:Label ID="Label2" runat="server" Text="Search Criteria" Font-Bold="True" Font-Size="Large"></asp:Label>
                <br />
                <br />
                <asp:RadioButton ID="cityNameRadioButton" runat="server" GroupName="RadioButton" Font-Size="Large" Text="City Name" AutoPostBack="True" OnCheckedChanged="cityNameRadioButton_CheckedChanged" />

                <asp:TextBox ID="serachTextBox" runat="server" Font-Size="Medium"></asp:TextBox>
                <asp:Button ID="searchButton" runat="server" OnClick="searchButton_Click" Text="Search" />
                <br/>
                <asp:RadioButton ID="countryRadioButton" runat="server" GroupName="RadioButton" Font-Size="Large" Text="Country" AutoPostBack="True" OnCheckedChanged="countryRadioButton_CheckedChanged" />

                <asp:DropDownList ID="countryDropDownList" runat="server" Font-Size="Medium"></asp:DropDownList>

                <asp:Button ID="homeButton" runat="server" OnClick="homeButton_Click1" Text="Cancel" />
            </asp:Panel>
            <br />
            <asp:Label ID="messageLabel" runat="server" Font-Bold="True" Font-Size="Large" BackColor="#3399FF"></asp:Label>
            <br />
            <br />
            <div class="gridviewClass">
                <asp:GridView ID="viewCitiesGridView" runat="server" BackColor="White" BorderColor="#336666" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="False" Font-Size="Medium" Height="240px" Style="margin-left: 13px; margin-top: 16px; margin-right: 0px;" Width="669px" AllowPaging="True" OnPageIndexChanging="viewCitiesGridView_PageIndexChanging" PageSize="5" BorderStyle="Double">
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
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
