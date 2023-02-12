using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vallorCafe_Website
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetProduct ds = new DataSetProduct();
            DataSetProductTableAdapters.ProductTableAdapter Ta = new DataSetProductTableAdapters.ProductTableAdapter();
            Ta.Fill(ds.Product);
            DataList2.DataSource = ds;
            DataList2.DataBind();

        }
    }
}