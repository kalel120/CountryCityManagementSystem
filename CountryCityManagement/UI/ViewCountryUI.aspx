<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCountryUI.aspx.cs" Inherits="CountryCityManagement.UI.ViewCountryUI" ValidateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Countries</title>
     <style>
        body {
            background-image: url("../FrontEnd/images/country_2.jpg");
            background-position: 0% 0%;
            background-repeat: repeat repeat;
            background-size: 1400px;
            background-attachment: fixed;
}
        }
    </style>
</head>
<body style="height: 650px">
    <form id="form1" runat="server">
        <div style="height: 801px">

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="View Countries"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="searchPanel" runat="server" BackColor="#FFF3E8" BorderColor="#FFE2C6" BorderStyle="Solid" Height="126px" Style="margin-left: 171px" Width="560px">
            <asp:Label ID="Label2" runat="server" Text="Search Criteria" Font-Bold="True" Font-Size="Large"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Large" Text="Name :"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="countrySearchTextBox" runat="server" Font-Size="Medium" Width="184px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="searchButton" runat="server" Font-Bold="True" Font-Size="Medium" Text="Search" Width="127px" OnClick="searchButton_Click" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="homeButton" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="homeButton_Click" Text="Home" Width="117px" />
        </asp:Panel>
            &nbsp;
    
        <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="messageLabel" runat="server"></asp:Label>
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="gridPanel" runat="server" BackColor="#FFF3E8" BorderColor="#FFE2C6" BorderStyle="Solid" Height="358px" Style="margin-left: 157px" Width="643px">
            <asp:GridView ID="countryGridView" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" style="margin-left: 18px; margin-top: 20px" Width="574px" AllowPaging="True" PageSize="2" OnPageIndexChanging="countryGridView_PageIndexChanging" Height="104px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />

                <Columns>
                    <asp:TemplateField HeaderText="SL#">
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
