using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JIO_MART
{
    public partial class BindPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            headContent.Controls.Add(LoadControl("Rice.aspx"));
            headContent.Controls.Add(LoadControl("ExistingPage2.aspx"));
        }
    }
}