<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityEntryUI.aspx.cs" Inherits="CountryCityManagement.UI.CityEntryUI" ValidateRequest="false"%>

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
    <style type="text/css">
        #aboutTextArea {
            width: 181px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 661px">
    
        <asp:Panel ID="Panel1" runat="server" Height="297px">
            City Entry<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            &nbsp;
            <asp:TextBox ID="cityNameTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="About"></asp:Label>
            &nbsp;
            <textarea id="aboutTextArea" runat="server" name="S1" rows="2">
                
            </textarea><br />
            <asp:Label ID="Label3" runat="server" Text="No. of Dwellers"></asp:Label>
            <asp:TextBox ID="noOfDwellersTextBox" runat="server" style="margin-left: 11px"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Location"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="locationTextBox" runat="server" style="margin-left: 39px"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Weather"></asp:Label>
            &nbsp;
            <asp:TextBox ID="weatherTextBox" runat="server" style="margin-left: 46px"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="CountryName"></asp:Label>
            <asp:DropDownList ID="cityCountryDropDownList" runat="server" Height="16px" style="margin-left: 58px" Width="123px">
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:Button ID="saveCityButton" runat="server" Text="Save" Width="70px" OnClick="saveCityButton_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="cancelCityButton" runat="server" Text="Cancel" OnClick="cancelCityButton_Click" />
            <br />
            <br />
            <asp:Label ID="messageLabel" runat="server"></asp:Label>
            <br />
            <asp:Panel ID="Panel2" runat="server" Height="181px">
                <asp:GridView ID="cityGridView" runat="server" AutoGenerateColumns="False" Height="33px" Width="212px">
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
                </asp:GridView>
            </asp:Panel>
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
