<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fruits.aspx.cs" Inherits="JIO_MART.Fruits" %>

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
                    <td><img src="https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg" alt="Apple" /><br />
                       <asp:Label ID="Label1" runat="server" Text="Apple" Font-Bold="true"  CssClass="image-label" /></td>

                    <td><img src="https://5.imimg.com/data5/SELLER/Default/2020/9/RI/WF/GL/106270270/orange.jpg" alt="Orange" /><br />
                         <asp:Label ID="Label2" runat="server" Text="Orange" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://m.media-amazon.com/images/I/611a1wD9ZGL._AC_UF1000,1000_QL80_.jpg" alt="Promogranate" /><br />
                         <asp:Label ID="Label3" runat="server" Text="Promogranate" Font-Bold="true"  CssClass="image-label" />
                    </td>
                        </tr> 
                <tr>                 
                    <td><img src="https://5.imimg.com/data5/VU/MR/MY-24751011/purple-grapes.jpg" alt="Purple Grapes" /><br />
                         <asp:Label ID="Label4" runat="server" Text="Purple Grapes" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://rukminim2.flixcart.com/image/850/1000/kt0enww0/plant-seed/h/h/n/25-dg-214-paudha-original-imag6fgvre6bmd5y.jpeg?q=90&crop=false" alt="Green Grapes" /><br />
                         <asp:Label ID="Label5" runat="server" Text="Green Grapes" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bunch-of-bananas-67e91d5.jpg?quality=90&resize=440,400" alt="Banana" /><br />
                         <asp:Label ID="Label6" runat="server" Text="Banana" Font-Bold="true"  CssClass="image-label" />
                    </td></tr>

                <tr> 
                      <td><img src="https://m.media-amazon.com/images/I/71kUFTKH4EL.jpg" alt="Custard apple" /><br />
                        <asp:Label ID="Label7" runat="server" Text="Custard apple" Font-Bold="true"  CssClass="image-label" />
                        </td>
                      <td><img src="https://yogisorganic.com/cdn/shop/products/Pineapple_600x@2x.jpg?v=1496866405" alt="Pine apple" /><br />
       <asp:Label ID="Label8" runat="server" Text="Pine apple" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://blog-images-1.pharmeasy.in/2020/08/28152823/shutterstock_583745164-1.jpg" alt="WaterMelon" /><br />
       <asp:Label ID="Label9" runat="server" Text="WaterMelon" Font-Bold="true"  CssClass="image-label" />
  </td></tr>

                <tr> 
                      <td><img src="https://www.farzana.ae/images/thumbs/0006187_baby-mango.jpeg" alt="Mango" /><br />
       <asp:Label ID="Label10" runat="server" Text="Mango" Font-Bold="true"  CssClass="image-label" />
  </td>
  <td><img src="https://fruitboxco.com/cdn/shop/products/IndianGuava_1024x.jpg?v=1643138011" alt="goa" /><br />
       <asp:Label ID="Label11" runat="server" Text="Goa" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://upload.wikimedia.org/wikipedia/commons/b/b8/Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour.jpg" alt="Kiwi" /><br />
       <asp:Label ID="Label12" runat="server" Text="Kiwi" Font-Bold="true"  CssClass="image-label" />
  </td></tr>
                <tr> 
                      <td><img src="https://5.imimg.com/data5/XD/RV/MY-47720961/sapota-fruit-to-be-riped-in-7-12-days.jpg" alt="Sapota" /><br />
       <asp:Label ID="Label13" runat="server" Text="Sapota" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://insanelygoodrecipes.com/wp-content/uploads/2023/02/Jackfruit-Meat.jpg" alt="Jackfruit" /><br />
       <asp:Label ID="Label14" runat="server" Text="Jackfruit" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://www.bigbasket.com/media/uploads/p/xl/10000263-3_1-fresho-strawberry.jpg" alt="Strawberry" /><br />
       <asp:Label ID="Label15" runat="server" Text="Strawberry" Font-Bold="true"  CssClass="image-label" />
  </td>
      </tr>
            </table>
        </div>
    </form>
</body></html>
