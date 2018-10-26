Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
        If Not hf.Contains("state") OrElse hf("state").ToString() <> "edit" Then
            Return
        End If

        Dim template As New ReadOnlyTemplate()

        TryCast(grid.Columns("UnitPrice"), GridViewDataColumn).EditItemTemplate = template
        TryCast(grid.Columns("UnitsInStock"), GridViewDataColumn).EditItemTemplate = template
        TryCast(grid.Columns("UnitsOnOrder"), GridViewDataColumn).EditItemTemplate = template
    End Sub
End Class

Friend Class ReadOnlyTemplate
    Implements ITemplate

    Public Sub InstantiateIn(ByVal _container As Control)
        Dim container As GridViewEditItemTemplateContainer = TryCast(_container, GridViewEditItemTemplateContainer)

        Dim lbl As New ASPxLabel()
        lbl.ID = "lbl"

        container.Controls.Add(lbl)
        lbl.Text = container.Text
    End Sub
End Class
