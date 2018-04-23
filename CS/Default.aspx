<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="sqlData" AutoGenerateColumns="False" KeyFieldName="ProductID" OnCustomUnboundColumnData="ASPxGridView1_CustomUnboundColumnData">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataColumn FieldName="Total" UnboundType="Integer">
                        <Settings AllowSort="False" />
                    </dx:GridViewDataColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="sqlData" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWINDConnectionString %>"
                SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock] FROM [Products]" />
        </div>
    </form>
</body>
</html>
