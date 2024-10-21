using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace JIO_MART
{
    public partial class Items_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.QueryString["Main_item_id"] != null)
                {
                    int mainItemId = Convert.ToInt32(Request.QueryString["Main_item_id"]);
                    BindItems(mainItemId);
                }
            }
        }

        //private void BindItems(int mainItemId)
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(connectionString))
        //    {
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("SELECT Item_id, Item_name FROM Items WHERE Main_item_id = " + mainItemId, con);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);

        //        rptItems.DataSource = dt;
        //        rptItems.DataBind();
        //    }
        //}

        private void BindItems(int mainItemId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT ItemName, FileName, ActualPrice, OfferPercentage, OfferPrice FROM tbl_admin WHERE Main_item_id = @MainItemId", con);
                cmd.Parameters.AddWithValue("@MainItemId", mainItemId);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                rptItems.DataSource = dt;
                rptItems.DataBind();
            }
        }
        public static string GetRelatedItems(string mainItemId)
        {
            // Implement logic to fetch related items based on the main item ID
            // For demonstration, let's just return a simple message
            return "<div>Related items for Main Item ID " + mainItemId + "</div>";
        }

        protected void btnIncrement_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;
            Label lblQuantity = (Label)item.FindControl("lblQuantity");
            int quantity = int.Parse(lblQuantity.Text);
            quantity++;
            lblQuantity.Text = quantity.ToString();
        }

        protected void btnDecrement_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;
            Label lblQuantity = (Label)item.FindControl("lblQuantity");
            int quantity = int.Parse(lblQuantity.Text);
            if (quantity > 0)
            {
                quantity--;
                lblQuantity.Text = quantity.ToString();
            }
        }



        protected void btnAddToCart_Command(object sender, CommandEventArgs e)
        {
            string itemId = e.CommandArgument.ToString();
            string script = string.Format("btnAddToCart_Command('{0}');", itemId);
            ScriptManager.RegisterStartupScript(this, GetType(), "btnAddToCart_Command", script, true);
        }



        protected void rptItems_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {

        }
    }
}
