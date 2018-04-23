using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Init(object sender, EventArgs e) {
        if (!hf.Contains("state") ||
           hf["state"].ToString() != "edit")
            return;

        ReadOnlyTemplate template = new ReadOnlyTemplate();

        (grid.Columns["UnitPrice"] as GridViewDataColumn).EditItemTemplate = template;
        (grid.Columns["UnitsInStock"] as GridViewDataColumn).EditItemTemplate = template;
        (grid.Columns["UnitsOnOrder"] as GridViewDataColumn).EditItemTemplate = template;
    }
}

class ReadOnlyTemplate : ITemplate {
    public void InstantiateIn(Control _container) {
        GridViewEditItemTemplateContainer container = _container as GridViewEditItemTemplateContainer;

        ASPxLabel lbl = new ASPxLabel();
        lbl.ID = "lbl";

        container.Controls.Add(lbl);
        lbl.Text = container.Text;
    }
}
