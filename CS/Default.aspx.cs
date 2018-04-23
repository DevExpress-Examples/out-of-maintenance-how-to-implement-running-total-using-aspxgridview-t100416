using DevExpress.Web.ASPxGridView;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }
    protected void ASPxGridView1_CustomUnboundColumnData(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewColumnDataEventArgs e) {
        ASPxGridView grid = (ASPxGridView)sender;
        int visibleIndex = grid.FindVisibleIndexByKeyValue(e.GetListSourceFieldValue("ProductID"));
        e.Value = (visibleIndex != 0) ?
            Convert.ToInt32(grid.GetRowValues(visibleIndex, "UnitsInStock")) + Convert.ToInt32(grid.GetRowValues(visibleIndex - 1, "Total")) :
            Convert.ToInt32(grid.GetRowValues(visibleIndex, "UnitsInStock"));
    }
}