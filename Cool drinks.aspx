<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cool drinks.aspx.cs" Inherits="JIO_MART.Cool_drinks" %>

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
                   <td><img src="https://www.towntokri.com/wp-content/uploads/2021/03/coca-cola-soft-drink-2l.jpg" alt="Coco cola" /><br />
                      <asp:Label ID="Label1" runat="server" Text="Coco cola" Font-Bold="true"  CssClass="image-label" /></td>

                   <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/251040_10-sprite-soft-drink-lime-flavoured.jpg" alt="Sprite" /><br />
                        <asp:Label ID="Label2" runat="server" Text="Sprite" Font-Bold="true"  CssClass="image-label" />
                   </td>
                   <td><img src="https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_272,w_252/s46ojiesgaeru0mz8zdc" alt="Thums up" /><br />
                        <asp:Label ID="Label3" runat="server" Text="Thums Up" Font-Bold="true"  CssClass="image-label" />
                   </td>
                       </tr> 
               <tr>                 
                   <td><img src="https://frugivore-bucket.s3.amazonaws.com/media/package/img_one/2020-10-17/Limca_Soft_Drink_-_Limca_Bottle_2l.jpg" alt="Limca" /><br />
                        <asp:Label ID="Label4" runat="server" Text="Limca" Font-Bold="true"  CssClass="image-label" />
                   </td>
                   <td><img src="https://frugivore-bucket.s3.amazonaws.com/media/package/img_one/2020-10-17/Mountain_Dew__Soft_Drink_-_Mountain_Dew_Bottle__600_Ml_.jpg" alt="Mountain dew" /><br />
                        <asp:Label ID="Label5" runat="server" Text="Mountain Dew" Font-Bold="true"  CssClass="image-label" />
                   </td>
                   <td><img src="https://www.bigbasket.com/media/uploads/p/m/40094180_11-mirinda-soft-drink.jpg" alt="Mirinda" /><br />
                        <asp:Label ID="Label6" runat="server" Text="Mirinda" Font-Bold="true"  CssClass="image-label" />
                   </td></tr>

               <tr> 
                     <td><img src="https://m.media-amazon.com/images/I/61+jGc7vLIL.jpg" alt="Mazaa" /><br />
                       <asp:Label ID="Label7" runat="server" Text="Mazaa" Font-Bold="true"  CssClass="image-label" />
                       </td>
                     <td><img src="https://rukminim2.flixcart.com/image/850/1000/xif0q/drinks-juice/0/d/u/-original-imagqh7c4uwzakjb.jpeg?q=20&crop=false" alt="WPulpy orange" /><br />
      <asp:Label ID="Label8" runat="server" Text="Pulpy orange" Font-Bold="true"  CssClass="image-label" />
 </td>
                     <td><img src="https://dukaan.b-cdn.net/700x700/webp/projecteagle/images/3ed75224-23c3-41ba-898e-cc5dd8b538a4.jpg" alt="Pepsi" /><br />
      <asp:Label ID="Label9" runat="server" Text="Pepsi" Font-Bold="true"  CssClass="image-label" />
 </td></tr>

               <tr> 
                     <td><img src="https://d3cm4d6rq8ed33.cloudfront.net/media/navpravartakfiles/19/ea19292c-837d-4d74-bc04-0fbde1c07e45.jpg" alt="7up" /><br />
      <asp:Label ID="Label10" runat="server" Text="7up" Font-Bold="true"  CssClass="image-label" />
 </td>
 <td><img src="https://rukminim2.flixcart.com/image/850/1000/jqzitu80/aerated-drink/e/d/g/750-soda-extra-punch-plastic-bottle-kinley-original-imafcvvq3gqyzxrf.jpeg?q=90" alt="Soda" /><br />
      <asp:Label ID="Label11" runat="server" Text="Soda" Font-Bold="true"  CssClass="image-label" />
 </td>
                     <td><img src="https://5.imimg.com/data5/SELLER/Default/2021/8/TO/KZ/WH/2755130/soda-water-500x500.png" alt="Bisleri soda" /><br />
      <asp:Label ID="Label12" runat="server" Text="Bisleri soda" Font-Bold="true"  CssClass="image-label" />
 </td></tr>
               <tr> 
                     <td><img src="https://tiimg.tistatic.com/fp/1/007/611/sweet-refreshing-apple-juice-appy-fizz-based-drink-no-added-preservatives-colors-422.jpg" alt="Appy fizz" /><br />
      <asp:Label ID="Label13" runat="server" Text="Appy fizz" Font-Bold="true"  CssClass="image-label" />
 </td>
                     <td><img src="https://5.imimg.com/data5/SELLER/Default/2022/2/NM/CC/EF/146503902/appy-fizz-bottle.jpg" alt="B fizz" /><br />
      <asp:Label ID="Label14" runat="server" Text="B fizz" Font-Bold="true"  CssClass="image-label" />
 </td>
                     <td><img src="https://m.media-amazon.com/images/I/51uwCXOFDqL.jpg" alt="frooti" /><br />
      <asp:Label ID="Label15" runat="server" Text="Frooti" Font-Bold="true"  CssClass="image-label" />
 </td>
     </tr>
           </table>
       </div>
   </form>
</body>
</html>
