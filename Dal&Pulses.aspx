<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dal&Pulses.aspx.cs" Inherits="JIO_MART.Dal_Pulses" %>

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
                    <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/100005819-2_7-santoor-sandal-turmeric-soap.jpg" alt="Santoor" /><br />
                       <asp:Label ID="Label1" runat="server" Text="Santoor" Font-Bold="true"  CssClass="image-label" /></td>

                    <td><img src="https://www.bigbasket.com/media/uploads/p/xl/20006244-3_1-dettol-bathing-soap-original.jpg" alt="Dettol" /><br />
                         <asp:Label ID="Label2" runat="server" Text="Dettol" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/40002021_2-lifebuoy-soap-bar-care.jpg" alt="Lifebuoy" /><br />
                         <asp:Label ID="Label3" runat="server" Text="Lifebuoy" Font-Bold="true"  CssClass="image-label" />
                    </td>
                        </tr> 
                <tr>                 
                    <td><img src="https://www.bigbasket.com/media/uploads/p/l/100006161_23-colgate-strong-teeth-anticavity-toothpaste-with-amino-shakti-formula-provides-fresher-breath.jpg" alt="Colgate" /><br />
                         <asp:Label ID="Label4" runat="server" Text="Colgate" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://www.jiomart.com/images/product/original/491711395/dabur-red-toothpaste-800-g-product-images-o491711395-p591013561-3-202205172253.jpg?im=Resize=(420,420)" alt="Dabur red" /><br />
                         <asp:Label ID="Label5" runat="server" Text="Dabur red" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://frugivore-bucket.s3.amazonaws.com/media/package/img_one/2021-02-07/Sensodyne_Toothpaste_-_Fresh_Mint_-_75_Gm.jpg" alt="Sensodyne" /><br />
                         <asp:Label ID="Label6" runat="server" Text="Sensodyne" Font-Bold="true"  CssClass="image-label" />
                    </td></tr>

                <tr> 
                      <td><img src="https://www.bigbasket.com/media/uploads/p/l/40065487_3-chuk-de-garam-masala-powder.jpg" alt="Garam Masala" /><br />
                        <asp:Label ID="Label7" runat="server" Text="Garam Masala" Font-Bold="true"  CssClass="image-label" />
                        </td>
                      <td><img src="https://m.media-amazon.com/images/I/71z6uY5Ib8S.jpg" alt="Coriender Powder" /><br />
       <asp:Label ID="Label8" runat="server" Text="Coriender Powder" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://www.aachifoods.com/data/products/kashmiri-chilli-powder-1651833964-1.jpeg" alt="Chilli Powder" /><br />
       <asp:Label ID="Label9" runat="server" Text="Chilli Powder" Font-Bold="true"  CssClass="image-label" />
  </td></tr>

                <tr> 
                      <td><img src="https://www.bigbasket.com/media/uploads/p/l/267845_11-head-shoulders-anti-dandruff-shampoo-cool-menthol-energizes-scalp.jpg" alt="Head-shoulder" /><br />
       <asp:Label ID="Label10" runat="server" Text="Head-shoulder" Font-Bold="true"  CssClass="image-label" />
  </td>
  <td><img src="https://m.media-amazon.com/images/I/51zTvo3FUZL._AC_UF1000,1000_QL80_.jpg" alt="Pantene" /><br />
       <asp:Label ID="Label11" runat="server" Text="Pantene" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://m.media-amazon.com/images/I/41qwrp3fVVL.jpg" alt="Mamaearth" /><br />
       <asp:Label ID="Label12" runat="server" Text="Mamaearth" Font-Bold="true"  CssClass="image-label" />
  </td></tr>
                <tr> 
                      <td><img src="https://niram.in/cdn/shop/products/NiveaMilkDelightsFaceWashWithFineGramflourforOilySkin_50ml_1024x.png?v=1658912850" alt="Nivea" /><br />
       <asp:Label ID="Label13" runat="server" Text="Nivea" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://media.naheed.pk/catalog/product/cache/fd6f1e57839b9b324771e8de21428b3f/1/1/1155011-1.jpg" alt="Garnier Men Facewash" /><br />
       <asp:Label ID="Label14" runat="server" Text="Garnier Men Facewash" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://shop.shajgoj.com/wp-content/uploads/2018/11/Lilac-Face-Wash-1.jpg" alt="Lilac Facewash" /><br />
       <asp:Label ID="Label15" runat="server" Text="Lilac Facewash" Font-Bold="true"  CssClass="image-label" />
  </td>
      </tr>
            </table>
        </div>
    </form>
</body></html>
