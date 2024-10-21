using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        //public static string GetRelatedItems(string mainItemId)
        //{
        //    // Implement logic to fetch related items based on the main item ID
        //    // For demonstration, let's just return a simple message
        //    return "<div>Related items for Main Item ID " + mainItemId + "</div>";
        //}
        //protected void btnAddToCart_Click(object sender, EventArgs e)
        //{
        //    Button button = (Button)sender;
        //    string itemId = button.CommandArgument;

        //}

        //protected void btnIncrement_Click(object sender, EventArgs e)
        //{
        //    Button button = (Button)sender;
        //    string itemId = button.CommandArgument;
        //    // Increment item quantity logic here
        //    // For example, update session or database
        //}

        //protected void btnDecrement_Click(object sender, EventArgs e)
        //{
        //    Button button = (Button)sender;
        //    string itemId = button.CommandArgument;
        //    // Decrement item quantity logic here
        //    // For example, update session or database
        //    // If quantity reaches 0, remove item from cart and hide quantity controls
        //}

        [WebMethod]
        public static string AddToCart(int itemId, string itemName, decimal itemPrice)
        {
            List<CartItem> cart = HttpContext.Current.Session["Cart"] as List<CartItem> ?? new List<CartItem>();
            var existingItem = cart.Find(item => item.ItemId == itemId);
            if (existingItem != null)
            {
                existingItem.Quantity++;
            }
            else
            {
                cart.Add(new CartItem { ItemId = itemId, ItemName = itemName, ItemPrice = itemPrice, Quantity = 1 });
            }
            HttpContext.Current.Session["Cart"] = cart;
            return "Item added to cart successfully!";
        }

        [WebMethod]
        public static List<CartItem> GetCartItems()
        {
            return HttpContext.Current.Session["Cart"] as List<CartItem> ?? new List<CartItem>();
        }

        public class CartItem
        {
            public int ItemId { get; set; }
            public string ItemName { get; set; }
            public decimal ItemPrice { get; set; }
            public int Quantity { get; set; }
        }
    }

}

    //protected void rptItems_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
    //    {


    //}

//using System;
//using System.Collections.Generic;
//using System.Configuration;
//using System.Data;
//using System.Data.SqlClient;
//using System.Web;
//using System.Web.Script.Services;
//using System.Web.Services;
//using System.Web.UI;

//namespace JIO_MART
//{
//    public partial class Items_page : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                if (Request.QueryString["Main_item_id"] != null)
//                {
//                    int mainItemId = Convert.ToInt32(Request.QueryString["Main_item_id"]);
//                    BindItems(mainItemId);
//                }
//            }
//        }

//        private void BindItems(int mainItemId)
//        {
//            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
//            using (SqlConnection con = new SqlConnection(connectionString))
//            {
//                con.Open();
//                SqlCommand cmd = new SqlCommand("SELECT ItemName, FileName, ActualPrice, OfferPercentage, OfferPrice FROM tbl_admin WHERE Main_item_id = @MainItemId", con);
//                cmd.Parameters.AddWithValue("@MainItemId", mainItemId);
//                SqlDataAdapter da = new SqlDataAdapter(cmd);
//                DataTable dt = new DataTable();
//                da.Fill(dt);

//                rptItems.DataSource = dt;
//                rptItems.DataBind();
//            }
//        }

//        [WebMethod]
//        public static string AddToCart(string itemName, decimal itemPrice)
//        {
//            List<CartItem> cart = HttpContext.Current.Session["Cart"] as List<CartItem> ?? new List<CartItem>();
//            var existingItem = cart.Find(item => item.ItemName == itemName);
//            if (existingItem != null)
//            {
//                existingItem.Quantity++;
//            }
//            else
//            {
//                cart.Add(new CartItem { ItemName = itemName, ItemPrice = itemPrice, Quantity = 1 });
//            }
//            HttpContext.Current.Session["Cart"] = cart;
//            return "Item added to cart successfully!";
//        }

//        [WebMethod]
//        public static List<CartItem> GetCartItems()
//        {
//            return HttpContext.Current.Session["Cart"] as List<CartItem> ?? new List<CartItem>();
//        }

//        public class CartItem
//        {
//            public string ItemName { get; set; }
//            public decimal ItemPrice { get; set; }
//            public int Quantity { get; set; }
//        }
//    }
//}
