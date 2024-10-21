
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JIO_MART
{
    public partial class Products_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMainItems();
            }
        }
        private void BindMainItems()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("usp_GetMainItems", con);
                cmd.CommandType = CommandType.StoredProcedure; // Specify that the SqlCommand is a stored procedure
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                rptmainitems.DataSource = dt;
                rptmainitems.DataBind();
            }
        }

        //private void BindMainItems()
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        //    //string connectionString = ConfigurationManager.ConnectionStrings["Data Source=DESKTOP-Q2IM7O2;Initial Catalog=login_signup_details;Integrated Security=True"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(connectionString))
        //    {
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("SELECT Main_item_id,Main_item_names,Image FROM Main_items", con);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);

        //        rptmainitems.DataSource = dt;
        //        rptmainitems.DataBind();
        //    }
        //}
        protected string GetImageUrl(object image)
        {
            if (image != DBNull.Value && image != null)
            {
                byte[] bytes = (byte[])image;
                string base64String = Convert.ToBase64String(bytes);
                return "data:image;base64," + base64String;
            }
            else
            {
                // Return a default image URL or an empty string
                return "";
            }
        }

        protected void rptMainItems_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ViewItems")
            {
                int mainItemId = Convert.ToInt32(e.CommandArgument);
                // Redirect to Item page with Main_item_id as query string parameter
                Response.Redirect("~/Items_page.aspx?Main_item_id=" + mainItemId);
            }
        }

    }
}
