<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        function OnSelectedIndexChanged(s, e) {
            alert(s.GetText());
        }
        function CancelEvent(evt) {
            return ASPxClientUtils.PreventEventAndBubble(evt);
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="ads"
        KeyFieldName="ProductID">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="CategoryID" VisibleIndex="2">
                <PropertiesComboBox ValueType="System.Int32" TextField="CategoryName" ValueField="CategoryID">
                </PropertiesComboBox>
                <HeaderCaptionTemplate>
                    <div onmousedown="return CancelEvent(event)" onmouseup="return CancelEvent(event)">
                        <dx:ASPxComboBox ID="cmb" runat="server" DataSourceID="dsCmb" ValueType="System.String"
                            TextField="CategoryName" ValueField="CategoryID">
                            <ClientSideEvents SelectedIndexChanged="OnSelectedIndexChanged" />
                        </dx:ASPxComboBox>
                    </div>
                </HeaderCaptionTemplate>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice] FROM [Products]">
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="dsCmb" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:AccessDataSource>
    </form>
</body>
</html>
