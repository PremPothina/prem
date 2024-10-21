<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vegtables.aspx.cs" Inherits="JIO_MART.Vegtables" %>

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
                    <td><img src="https://www.evobee.com/uploads/products/image/15b0476aaaf6c86003e6332c955f9132.jpg" alt="Tomato" /><br />
                       <asp:Label ID="Label1" runat="server" Text="Tomato" Font-Bold="true"  CssClass="image-label" /></td>

                    <td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkghkyX6WxELOBSdXN97rZoXfMLV5Dq6BtJtINziqd5_yZLZjRyqg7fAoegspd7VbYAOM&usqp=CAU" alt="Capsicum" /><br />
                         <asp:Label ID="Label2" runat="server" Text="Capsicum" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://images.indianexpress.com/2021/08/bhindi_1200_getty.jpg?w=414" alt="Ladies finger" /><br />
                         <asp:Label ID="Label3" runat="server" Text="Ladies finger" Font-Bold="true"  CssClass="image-label" />
                    </td>
                        </tr> 
                <tr>                 
                    <td><img src="https://cdn.grofers.com/app/images/category/cms_images/rc-upload-1702463308432-3" alt="Cauliflower" /><br />
                         <asp:Label ID="Label4" runat="server" Text="Cauliflower" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://www.healthxchange.sg/sites/hexassets/Assets/children/food-for-thought-tips-to-get-your-child-to-eat-vegetables-and-fruits.jpg" alt="Carrot" /><br />
                         <asp:Label ID="Label5" runat="server" Text="Carrot" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://static.toiimg.com/thumb/97704047.cms?width=400&height=300&resizemode=4&imgsize=96574" alt="Cabbage" /><br />
                         <asp:Label ID="Label6" runat="server" Text="Cabbage" Font-Bold="true"  CssClass="image-label" />
                    </td></tr>

                <tr> 
                      <td><img src="https://i.pinimg.com/736x/d5/f9/ed/d5f9ed7a7fa30e197c9851c7df334300.jpg" alt="Brinjal" /><br />
                        <asp:Label ID="Label7" runat="server" Text="Brinjal" Font-Bold="true"  CssClass="image-label" />
                        </td>
                      <td><img src="https://www.jiomart.com/images/product/original/590000090/potato-1-kg-product-images-o590000090-p590000090-0-202207291750.jpg?im=Resize=(420,420)" alt="Potato" /><br />
       <asp:Label ID="Label8" runat="server" Text="Potato" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://img.clevup.in/246745/1660649694890_SKU-0030_0.jpeg?width=600" alt="Onion" /><br />
       <asp:Label ID="Label9" runat="server" Text="Onion" Font-Bold="true"  CssClass="image-label" />
  </td></tr>

                <tr> 
                      <td><img src="https://www.jiomart.com/images/product/original/590001217/bottle-gourd-approx-600-g-900-g-product-images-o590001217-p596483940-0-202212192032.jpg?im=Resize=(420,420)" alt="Bottle Gourd" /><br />
       <asp:Label ID="Label10" runat="server" Text="Bottle Gourd" Font-Bold="true"  CssClass="image-label" />
  </td>
  <td><img src="https://lyofood.com/cdn/shop/articles/LYOFOOD-freeze-dried-organic-beetroot-powders-EU-01.jpg?v=1490710701" alt="Beetroot" /><br />
       <asp:Label ID="Label11" runat="server" Text="BeetRoot" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://www.allrecipes.com/thmb/1Ke9oFYyqp2CvSVlaOV-nsPIKQc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/ALR-what-is-ginger-20ed1f436bee4c4085b009756c8bc4db.jpg" alt="ginger" /><br />
       <asp:Label ID="Label12" runat="server" Text="Ginger" Font-Bold="true"  CssClass="image-label" />
  </td></tr>
                <tr> 
                      <td><img src="https://m.media-amazon.com/images/I/71KmgOL2q4L.jpg" alt="Garlic" /><br />
       <asp:Label ID="Label13" runat="server" Text="Garlic" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://static.wixstatic.com/media/4238e8_03d7db52d5a245eaad5f2414073090d3~mv2.jpg/v1/fill/w_480,h_480,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/4238e8_03d7db52d5a245eaad5f2414073090d3~mv2.jpg" alt="Mirchi" /><br />
       <asp:Label ID="Label14" runat="server" Text="Mirchi" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://exoticseedemporium.com/cdn/shop/products/Moringadrumstick.jpg?v=1641465606&width=1445" alt="Drumstick" /><br />
       <asp:Label ID="Label15" runat="server" Text="Drumstick" Font-Bold="true"  CssClass="image-label" />
  </td>
      </tr>
            </table>
        </div>
    </form>
</body>

</html>
