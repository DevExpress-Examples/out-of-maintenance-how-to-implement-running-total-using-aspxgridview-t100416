Imports Microsoft.VisualBasic
Imports DevExpress.Web
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub ASPxGridView1_CustomUnboundColumnData(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridViewColumnDataEventArgs)
		Dim grid As ASPxGridView = CType(sender, ASPxGridView)
		Dim visibleIndex As Integer = grid.FindVisibleIndexByKeyValue(e.GetListSourceFieldValue("ProductID"))
		If (visibleIndex <> 0) Then
			e.Value = Convert.ToInt32(grid.GetRowValues(visibleIndex, "UnitsInStock")) + Convert.ToInt32(grid.GetRowValues(visibleIndex - 1, "Total"))
		Else
			e.Value = Convert.ToInt32(grid.GetRowValues(visibleIndex, "UnitsInStock"))
		End If
	End Sub
End Class