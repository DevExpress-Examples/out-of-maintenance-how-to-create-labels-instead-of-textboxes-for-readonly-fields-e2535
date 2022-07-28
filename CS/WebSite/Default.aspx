<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v18.2, Version=18.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to create labels instead of textboxes for readonly fields</title>

    <script type="text/javascript">
        function OnCustomButtonClick (s, e) {
            e.processOnServer = false;
            
            hf.Add("state", "edit");
            grid.StartEditRow (e.visibleIndex);            
        }
        
        function OnEndCallback (s, e) {
            if (hf.Contains("state"))
                hf.Remove("state");
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="sds"
                KeyFieldName="ProductID" ClientInstanceName="grid" EnableRowsCache="false">
                <Columns>
                    <dx:GridViewCommandColumn VisibleIndex="0" ShowNewButton="True">
                        <CustomButtons>
                            <dx:GridViewCommandColumnCustomButton ID="btnEdit" Text="Edit">
                            </dx:GridViewCommandColumnCustomButton>
                        </CustomButtons>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="3">
                        <CellStyle BackColor="#FFC080">
                        </CellStyle>
                        <EditCellStyle BackColor="#FFC080">
                            <Paddings PaddingLeft="6px" PaddingRight="6px" />
                        </EditCellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="4">
                        <CellStyle BackColor="#FFC080">
                        </CellStyle>
                        <EditCellStyle BackColor="#FFC080">
                            <Paddings PaddingLeft="6px" PaddingRight="6px" />
                        </EditCellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="5">
                        <CellStyle BackColor="#FFC080">
                        </CellStyle>
                        <EditCellStyle BackColor="#FFC080">
                            <Paddings PaddingLeft="6px" PaddingRight="6px" />
                        </EditCellStyle>
                    </dx:GridViewDataTextColumn>
                </Columns>
                <SettingsEditing Mode="Inline" />
                <ClientSideEvents CustomButtonClick="OnCustomButtonClick" EndCallback="OnEndCallback" />
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="sds" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock], [UnitsOnOrder] FROM [Alphabetical list of products]">
            </asp:SqlDataSource>
            <dx:ASPxHiddenField ID="hf" ClientInstanceName="hf" runat="server">
            </dx:ASPxHiddenField>
        </div>
    </form>
</body>
</html>
