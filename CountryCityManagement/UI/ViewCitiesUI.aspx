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
    </style>
    <%--<link href="../CSS/resetCSS.css" rel="stylesheet" />--%>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 737px">

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="View Cities"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="searchPanel" runat="server" BackColor="#336699" BorderColor="#0066CC" BorderStyle="Solid" Height="219px" Style="margin-left: 289px" Width="612px">
                <asp:Label ID="Label2" runat="server" Text="Search Criteria" Font-Bold="True" Font-Size="Large"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="cityNameRadioButton" runat="server" GroupName="RadioButton" Font-Size="Large" Text="City Name" AutoPostBack="True" OnCheckedChanged="cityNameRadioButton_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="serachTextBox" runat="server" Font-Size="Medium" Height="16px" Style="margin-left: 0px" Width="163px" BorderColor="#0066CC" BorderStyle="Solid"></asp:TextBox>
                <asp:Button ID="searchButton" runat="server" Font-Bold="True" Font-Size="Medium" Height="36px" OnClick="searchButton_Click" Style="margin-left: 450px" Text="Search" Width="140px" BorderColor="#003366" BorderStyle="Solid" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="countryRadioButton" runat="server" GroupName="RadioButton" Font-Size="Large" Text="Country" AutoPostBack="True" OnCheckedChanged="countryRadioButton_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="countryDropDownList" runat="server" Font-Size="Medium" Height="25px" Width="173px" BackColor="#CCCCFF">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="homeButton" runat="server" Font-Bold="True" Font-Size="Medium" Height="36px" OnClick="homeButton_Click1" Style="margin-left: 450px" Text="Cancle" Width="140px" BorderColor="#003399" BorderStyle="Solid" />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:Panel>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="messageLabel" runat="server" Font-Bold="True" Font-Size="Large" BackColor="#3399FF"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="viewCitiesGridView" runat="server" BackColor="White" BorderColor="#336666" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="False" Font-Size="Medium" Height="129px" Style="margin-left: 153px; margin-top: 11px;" Width="949px" AllowPaging="True" OnPageIndexChanging="viewCitiesGridView_PageIndexChanging" PageSize="5" BorderStyle="Groove">
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
                <SelectedRowStyle BackColor="#339966" ForeColor="White" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <%--    </asp:Panel>--%>
        </div>
    </form>
</body>
</html>
