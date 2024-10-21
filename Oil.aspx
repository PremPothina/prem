<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Oil.aspx.cs" Inherits="JIO_MART.Oil" %>

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

    table 
    {
        margin: 0 auto; /* Center the table */
    }
</style>
</head>
<body>
       <form id="form1" runat="server">
       <div class="image-gallery">
           <table>
               <tr>
                   <td><img src="https://www.healthkart.com/connect/wp-content/uploads/2016/08/banner-56.jpg" alt="sunflower oil" /><br />
                      <asp:Label ID="Label1" runat="server" Text="Sunflower oil" Font-Bold="true"  CssClass="image-label" /></td>

                   <td><img src="https://5.imimg.com/data5/FQ/WC/QY/SELLER-92464647/fortune-refined-soya-oil-500x500-jpg-500x500.jpg" alt="Fortune oil" /><br />
                        <asp:Label ID="Label2" runat="server" Text="Fortune oil" Font-Bold="true"  CssClass="image-label" />
                   </td>
                   <td><img src="https://www.jiomart.com/images/product/original/490016213/gold-drop-refined-sunflower-oil-15-kg-tin-product-images-o490016213-p490016213-0-202308081712.jpg?im=Resize=(1000,1000)" alt="Gold drop" /><br />
                        <asp:Label ID="Label3" runat="server" Text="Golddrop oil" Font-Bold="true"  CssClass="image-label" />
                   </td>
                       </tr> 
               <tr>                 
                   <td><img src="https://m.media-amazon.com/images/I/611hGyrygxL.jpg" alt="Saffola oil" /><br />
                        <asp:Label ID="Label4" runat="server" Text="Saffola oil" Font-Bold="true"  CssClass="image-label" />
                   </td>
                   <td><img src="https://standardcoldpressedoil.com/wp-content/uploads/2021/08/Cold-Pressed-Groundnut-Oil.jpg" alt="Groundnut oil" /><br />
                        <asp:Label ID="Label5" runat="server" Text="Groundnut oil" Font-Bold="true"  CssClass="image-label" />
                   </td>
                   <td><img src="https://rukminim2.flixcart.com/image/400/400/l0e6kcw0/edible-oil/1/2/z/1000-extra-light-virgin-olive-oil-for-cooking-1l-1-pet-bottle-original-imagc74bdw8zxdze.jpeg?q=90&crop=false" alt="Olive oil" /><br />
                        <asp:Label ID="Label6" runat="server" Text="Olive oil" Font-Bold="true"  CssClass="image-label" />
                   </td></tr>

               <tr> 
                     <td><img src="https://m.media-amazon.com/images/I/8101W124LEL._AC_UF1000,1000_QL80_.jpg" alt="Mazola" /><br />
                       <asp:Label ID="Label7" runat="server" Text="Mazola" Font-Bold="true"  CssClass="image-label" />
                       </td>
                     <td><img src="https://5.imimg.com/data5/SELLER/Default/2023/1/BY/MM/ZL/154350704/123-500x500.jpg" alt="Coconut oil" /><br />
      <asp:Label ID="Label8" runat="server" Text="Coconut oil" Font-Bold="true"  CssClass="image-label" />
 </td>
                     <td><img src="https://www.bigbasket.com/media/uploads/p/xl/40170453_1-sundrop-heart-cooking-oil-offer-pack.jpg" alt="Sun drop" /><br />
      <asp:Label ID="Label9" runat="server" Text="Sun drop" Font-Bold="true"  CssClass="image-label" />
 </td></tr>

               <tr> 
                     <td><img src="https://m.media-amazon.com/images/I/71tbpnF559L._AC_UF350,350_QL80_.jpg" alt="Coconut oil" /><br />
                    <asp:Label ID="Label10" runat="server" Text="Coconut oil" Font-Bold="true"  CssClass="image-label" />
               </td>
               <td><img src="https://m.media-amazon.com/images/I/51YazYEJBsL._AC_UF1000,1000_QL80_.jpg" alt="Ghee" /><br />
      <asp:Label ID="Label11" runat="server" Text="Ghee" Font-Bold="true"  CssClass="image-label" />
          </td>
                     <td><img src="https://freshclub.co.in/cdn/shop/products/71zJm_YHkCL._SL1500.jpg?v=1655986704" alt="Freedom oil" /><br />
      <asp:Label ID="Label12" runat="server" Text="Freedom oil" Font-Bold="true"  CssClass="image-label" />
 </td></tr>
               <tr> 
                     <td><img src="https://m.media-amazon.com/images/I/61+43etpuBL._AC_UF1000,1000_QL80_.jpg" alt="sesame oil" /><br />
      <asp:Label ID="Label13" runat="server" Text="Sesame oil" Font-Bold="true"  CssClass="image-label" />
 </td>
                     <td><img src="https://m.media-amazon.com/images/I/51sBDXzdmXL.jpg" alt="Alamond oil" /><br />
      <asp:Label ID="Label14" runat="server" Text="Almond oil" Font-Bold="true"  CssClass="image-label" />
 </td>
                     <td><img src="https://m.media-amazon.com/images/I/51fFyec5jcL.jpg" alt="Parachute Alovera oil" /><br />
      <asp:Label ID="Label15" runat="server" Text="Parachute Alovera oil" Font-Bold="true"  CssClass="image-label" />
 </td>
     </tr>
           </table>
       </div>
   </form>
</body></html>
