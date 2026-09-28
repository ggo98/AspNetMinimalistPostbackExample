<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspNetMinimalistPostbackExample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnableHistory="true">
<%--            <Scripts>
                <asp:ScriptReference Path="~/Scripts/jquery/jquery-1.9.1.min.js" />
                <asp:ScriptReference Path="~/Scripts/jquery.ui/js/jquery-ui-1.9.2.js" />
                <asp:ScriptReference Path="~/Scripts/jquery.ui.multiselect/jquery.multiselect.min.js" />
                <asp:ScriptReference Path="~/Scripts/jquery.ui.multiselect/jquery.multiselect.filter.min.js" />
                <asp:ScriptReference Path="MasterPageView.js?v=20" />
            </Scripts>--%>
        </asp:ScriptManager>

	    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
<%--	        <Triggers>
	            <asp:AsyncPostBackTrigger ControlID="butRunOutput" />
	            <asp:AsyncPostBackTrigger ControlID="butLocalExport" />
	        </Triggers>--%>
		    <ContentTemplate>
		        <asp:Panel ID="Panel1" runat="server">
                    <div>
                        <asp:Label ID="LabelPageGUID" runat="server" />
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label1" runat="server" />
                        <br />
                    </div>
                </asp:Panel>
		    </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
