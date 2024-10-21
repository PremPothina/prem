<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dal_Pulses.aspx.cs" Inherits="JIO_MART.Dal_Pulses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style>
    .image-gallery {
        text-align: center;
        padding: 20px; /* Add padding around the images */
    }

    .image-gallery img {
        margin: 10px; /* Add margin between the images */
        border: 1px solid #ccc; /* Add a border around each image */
        padding: 5px; /* Add padding inside the border */
        width: 200px; /* Set the width of the images */
        height: 200px; /* Set the height of the images */
        object-fit: cover; /* Maintain aspect ratio and cover the entire space */
    }

    table {
        margin: 0 auto; /* Center the table */
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="image-gallery">
            <table>
                <tr>
                    <td><img src="https://www.jiomart.com/images/product/original/492851037/good-life-unpolished-toor-dal-500-g-product-images-o492851037-p591219161-0-202301260637.jpg?im=Resize=(420,420)" alt="Toor dal" /><br />
                       <asp:Label ID="Label1" runat="server" Text="Toor dal" Font-Bold="true"  CssClass="image-label" /></td>

                    <td><img src="https://www.indiabazaar.co.za/cdn/shop/products/indiabazaar-yellow-moong-dal1_efb0b568-9885-4ecf-a699-d24ec576f340.png?v=1669386748" alt="Moong dal" /><br />
                         <asp:Label ID="Label2" runat="server" Text="Moong dal" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/30010378-2_9-bb-popular-urad-dal.jpg" alt="Urad dal" /><br />
                         <asp:Label ID="Label3" runat="server" Text="Urad dal" Font-Bold="true"  CssClass="image-label" />
                    </td>
                        </tr> 
                <tr>                 
                    <td><img src="https://www.vijayfoods.com/wp-content/uploads/2022/04/Fried-Gram-500g.png" alt="Fried gram" /><br />
                         <asp:Label ID="Label4" runat="server" Text="Fried Gram" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://www.jiomart.com/images/product/original/rvbst0chdb/momsy-premium-quality-green-moong-whole-sabut-gluten-free-green-moong-dal-2kg-product-images-orvbst0chdb-p598383309-0-202302141656.jpg?im=Resize=(420,420)" alt="Green Moong Whole" /><br />
                         <asp:Label ID="Label5" runat="server" Text="Green Moong Whole" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://www.fortunefoods.com/wp-content/uploads/2022/12/e-com-listing-Chana-dal-1kg-02.png" alt="Chana dal" /><br />
                         <asp:Label ID="Label6" runat="server" Text="Chana dal" Font-Bold="true"  CssClass="image-label" />
                    </td></tr>

                <tr> 
                      <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/40003553-2_7-bb-popular-channa-brown.jpg" alt="Chana-brown" /><br />
                        <asp:Label ID="Label7" runat="server" Text="Chana-brown" Font-Bold="true"  CssClass="image-label" />
                        </td>
                      <td><img src="https://www.bigbasket.com/media/uploads/p/l/40072484-5_5-bb-royal-organic-raw-peanuts.jpg" alt="Raw-Peanut" /><br />
       <asp:Label ID="Label8" runat="server" Text="Raw-Peanut" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://www.patanjaliayurved.net/assets/product_images/400x500/1690277921WhitePeas500g1.png" alt="White Peas" /><br />
       <asp:Label ID="Label9" runat="server" Text="White Peas" Font-Bold="true"  CssClass="image-label" />
  </td></tr>

                <tr> 
                      <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/40200391-2_3-farmland-frozen-vegetables-green-peas.jpg" alt="Green-Peas" /><br />
       <asp:Label ID="Label10" runat="server" Text="Green_Peas" Font-Bold="true"  CssClass="image-label" />
  </td>
  <td><img src="https://www.bigbasket.com/media/uploads/p/l/40026596-3_2-bb-royal-soya-bean.jpg" alt="Soya beans" /><br />
       <asp:Label ID="Label11" runat="server" Text="Soya beans" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://m.media-amazon.com/images/I/71Qsji592aS._AC_UF1000,1000_QL80_.jpg" alt="Kabuli-Chana" /><br />
       <asp:Label ID="Label12" runat="server" Text="Mamaearth" Font-Bold="true"  CssClass="image-label" />
  </td></tr>
                <tr> 
                      <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/40195136-2_4-tata-sampann-unpolished-masoor-dal-whole.jpg" alt="Masoor dal" /><br />
       <asp:Label ID="Label13" runat="server" Text="Masoor dal" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://m.media-amazon.com/images/I/919VDk6WrbL.jpg" alt="Rajma chitra" /><br />
       <asp:Label ID="Label14" runat="server" Text="Rajma Chitra" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://www.bigbasket.com/media/uploads/p/l/40135860-4_5-bb-royal-organic-urad-dal-black-split.jpg" alt="Urad Black-split" /><br />
       <asp:Label ID="Label15" runat="server" Text="Urad Black-split" Font-Bold="true"  CssClass="image-label" />
  </td>
      </tr>
            </table>
        </div>
    </form>
</body></html>
