<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityEntryUI.aspx.cs" Inherits="CountryCityManagement.UI.CityEntryUI" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>City Entry</title>
    <meta charset="utf-8" />
    <!-- Include Font Awesome. -->
    <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Include Editor style. -->
    <link href="../froala_editor_2.0.5/css/froala_editor.min.css" rel="stylesheet" type="text/css" />
    <link href="../froala_editor_2.0.5/css/froala_style.min.css" rel="stylesheet" type="text/css" />
    <!-- Include Editor Plugins style. -->
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/char_counter.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/code_view.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/colors.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/emoticons.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/file.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/fullscreen.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/image.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/image_manager.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/line_breaker.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/table.css" />
    <link rel="stylesheet" href="../froala_editor_2.0.5/css/plugins/video.css" />
    <link href="../FrontEnd/css/CityEntryStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <asp:Panel ID="Panel1" runat="server" Height="330px">
                <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" Font-Size="Large"></asp:Label>

                <asp:TextBox ID="cityNameTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="About" Font-Bold="True" Font-Size="Large"></asp:Label>

                <textarea id="aboutTextArea" runat="server" name="S1" rows="2"> </textarea>
                <br />
                <asp:Label ID="Label3" runat="server" Text="No. of Dwellers" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="noOfDwellersTextBox" runat="server" Style="margin-left: 47px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Location" Font-Bold="True" Font-Size="Large"></asp:Label>

                <asp:TextBox ID="locationTextBox" runat="server" Style="margin-left: 75px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Weather" Font-Bold="True" Font-Size="Large"></asp:Label>

                <asp:TextBox ID="weatherTextBox" runat="server" Style="margin-left: 84px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="CountryName" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:DropDownList ID="cityCountryDropDownList" runat="server" Height="27px" Style="margin-left: 60px" Width="127px">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="saveCityButton" runat="server" Text="Save" Width="70px" OnClick="saveCityButton_Click" Font-Size="Medium" />
                <asp:Button ID="cancelCityButton" runat="server" Text="Cancel" OnClick="cancelCityButton_Click" Font-Size="Medium" />
                <br />
                <br />
                <asp:Label ID="messageLabel" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
                <br />
                <div class="gridviewClass">
                    <asp:Panel ID="Panel2" runat="server" Height="181px">
                        <asp:GridView ID="cityGridView" runat="server" AutoGenerateColumns="False" Height="33px" Width="593px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                            <Columns>
                                <asp:TemplateField HeaderText="SL#">
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%#Eval("CitySL")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%#Eval("CityName")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="No. of Dwellers">
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%#Eval("Dwellers")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Country Name">
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%#Eval("CountryName")%>'></asp:Label>
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
                    </asp:Panel>
                </div>
            </asp:Panel>
        </div>
        <!-- Include jQuery. -->
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <!-- Include JS files. -->
        <script src="../froala_editor_2.0.5/js/froala_editor.min.js"></script>
        <!-- Include Plugins. -->
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/align.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/char_counter.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/code_view.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/colors.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/emoticons.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/entities.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/file.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/font_family.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/font_size.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/fullscreen.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/image.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/image_manager.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/inline_style.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/line_breaker.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/link.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/lists.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/paragraph_format.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/paragraph_style.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/quote.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/table.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/save.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/url.min.js"></script>
        <script type="text/javascript" src="../froala_editor_2.0.5/js/plugins/video.min.js"></script>
        <!-- Include Language file if we'll use it. -->
        <script type="text/javascript" src="../froala_editor_2.0.5/js/languages/ro.js"></script>
        <!-- Initialize the editor. -->
        <script>
            $(function () {
                $('textarea#aboutTextArea').froalaEditor();
            });
        </script>
    </form>
</body>
</html>
