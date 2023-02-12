using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace vallorCafe_Website.Users
{
    public partial class Shopping : System.Web.UI.Page
    {
        DataTable myCart = new DataTable();
        int quantity = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = DateTime.Now.ToString();
            if (!IsPostBack)
            {
                myCart = MakeCart(myCart);
                Session["cart"] = myCart;
            }
            if (IsPostBack) {
                myCart = (DataTable)Session["cart"];
            }
            DataSetItemImage ds = new DataSetItemImage();
            DataSetItemImageTableAdapters.ProductTableAdapter Ta = new DataSetItemImageTableAdapters.ProductTableAdapter();
            Ta.Fill(ds.Product, DropDownList1.Text);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        protected Boolean isAvailable(GridView g,string Id) {

            foreach(GridViewRow row in g.Rows) {
                if ( (row.Cells[1].Text).Equals(Id)) {
                    return true;
                }
            }
            return false;
        }
        protected DataTable MakeCart(DataTable myCart) {
            myCart.Columns.Add("ProductID");
            myCart.Columns.Add("Name");
            myCart.Columns.Add("Description");
            myCart.Columns.Add("Category");
            myCart.Columns.Add("Size");
            myCart.Columns.Add("SellingPrice");
            myCart.Columns.Add("Quantity");
            return myCart;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (isAvailable(GridView1, DetailsView1.Rows[0].Cells[1].Text))
            {
                foreach(GridViewRow dr in GridView1.Rows)
                {
                    if ((dr.Cells[0].Text).Equals(DetailsView1.Rows[0].Cells[1]))
                    {
                        dr.Cells[6].Text = ""+(Convert.ToInt16(dr.Cells[6].Text)+1);
                    }
                }
                Session["cart"] = myCart;
            }
            else
            {
                DataRow CartRow;
                CartRow = myCart.NewRow();
                quantity = 1;
                CartRow["ProductID"] = DetailsView1.Rows[0].Cells[1].Text;
                CartRow["Name"] = DetailsView1.Rows[1].Cells[1].Text;
                CartRow["Description"] = DetailsView1.Rows[2].Cells[1].Text;
                CartRow["Category"] = DetailsView1.Rows[3].Cells[1].Text;
                CartRow["Size"] = DetailsView1.Rows[4].Cells[1].Text;
                CartRow["SellingPrice"] = "R " +DetailsView1.Rows[5].Cells[1].Text;
                CartRow["Quantity"] = quantity;

                myCart.Rows.Add(CartRow);
            }
            GridView1.DataSource = myCart;
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            myCart.Rows.RemoveAt(e.RowIndex);
            GridView1.DataSource = myCart;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}