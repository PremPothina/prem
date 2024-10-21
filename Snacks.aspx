<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Snacks.aspx.cs" Inherits="JIO_MART.Snacks" %>

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
                   <td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYlO2H-oUpPvYr1z04FZq0UkL7tTCqRmtPLw&usqp=CAU" alt="Potato Biscuts" /><br />
                      <asp:Label ID="Label1" runat="server" Text="Potato Biscuts" Font-Bold="true"  CssClass="image-label" /></td>

                   <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/294283_18-lays-potato-chips-spanish-tomato-tango.jpg" alt="Red Lays" /><br />
                        <asp:Label ID="Label2" runat="server" Text="Red Lays" Font-Bold="true"  CssClass="image-label" />
                   </td>
                   <td><img src="https://www.bigbasket.com/media/uploads/p/l/40202438_5-lays-maxx-potato-chips-sizzling-barbeque-crunchy.jpg" alt="Lays maxx" /><br />
                        <asp:Label ID="Label3" runat="server" Text="Lays maxx" Font-Bold="true"  CssClass="image-label" />
                   </td>
                       </tr> 
               <tr>                 
                   <td><img src="https://www.bigbasket.com/media/uploads/p/l/40077104_9-sunfeast-dark-fantasy-biscuits-cookies-choco-fills.jpg" alt="Dark-fantasy" /><br />
                        <asp:Label ID="Label4" runat="server" Text="Dark-fantasy" Font-Bold="true"  CssClass="image-label" />
                   </td>
                   <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/70000420_2-priyagold-biscuits-snacks-zig-zag.jpg" alt="Zig Zag" /><br />
                        <asp:Label ID="Label5" runat="server" Text="Zig Zag" Font-Bold="true"  CssClass="image-label" />
                   </td>
                   <td><img src="https://tatogy.com/cdn/shop/products/IMG_6649_600x600.jpg?v=1608086224" alt="OREO" /><br />
                        <asp:Label ID="Label6" runat="server" Text="OREO" Font-Bold="true"  CssClass="image-label" />
                   </td></tr>

               <tr> 
                     <td><img src="https://m.media-amazon.com/images/I/51TvOmgIO+L._AC_UF1000,1000_QL80_.jpg" alt="5star" /><br />
                       <asp:Label ID="Label7" runat="server" Text="5star" Font-Bold="true"  CssClass="image-label" />
                       </td>
                     <td><img src="https://rukminim2.flixcart.com/image/850/1000/xif0q/chocolate/l/n/k/138-perk-chocolate-coated-wafer-home-treats-1-cadbury-original-imagr9fcrbznsxhh.jpeg?q=90&crop=false" alt="perk" /><br />
      <asp:Label ID="Label8" runat="server" Text="Perk" Font-Bold="true"  CssClass="image-label" />
 </td>
                     <td><img src="https://m.media-amazon.com/images/I/41SLGj5SeXL._AC_SR300,300.jpg" alt="Dairy milk" /><br />
      <asp:Label ID="Label9" runat="server" Text="Dairy Milk" Font-Bold="true"  CssClass="image-label" />
 </td></tr>

               <tr> 
                     <td><img src="https://tiimg.tistatic.com/fp/1/007/593/hygienic-prepared-spicy-taste-crispy-crunchy-hot-spicy-soya-sticks-snacks-671.jpg" alt="soya sticks" /><br />
      <asp:Label ID="Label10" runat="server" Text="Soya sticks" Font-Bold="true"  CssClass="image-label" />
 </td>
 <td><img src="https://m.media-amazon.com/images/I/81haooxoFPL.jpg" alt="Moong dal" /><br />
      <asp:Label ID="Label11" runat="server" Text="Moong dal" Font-Bold="true"  CssClass="image-label" />
 </td>
                     <td><img src="https://moddys.in/cdn/shop/products/kruthi-udupi-mixture_600x.jpg?v=1677229749" alt="Mixture" /><br />
      <asp:Label ID="Label12" runat="server" Text="Mixture" Font-Bold="true"  CssClass="image-label" />
 </td></tr>
               <tr> 
                     <td><img src="https://martmines.com/wp-content/uploads/2021/06/Corn-Chips-1.jpg" alt="Corn Mixture" /><br />
      <asp:Label ID="Label13" runat="server" Text="Corn Mixture" Font-Bold="true"  CssClass="image-label" />
 </td>
                     <td><img src="https://www.bikaji.com/pub/media/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/c/r/crushed-peanut-front_1.png" alt="Peanuts" /><br />
      <asp:Label ID="Label14" runat="server" Text="Peanuts" Font-Bold="true"  CssClass="image-label" />
 </td>
                     <td><img src="https://www.ohhoexpress.online/image/admin/1633519962_store700042.jpg" alt="Pulse peanuts" /><br />
      <asp:Label ID="Label15" runat="server" Text="Pulse Peanuts" Font-Bold="true"  CssClass="image-label" />
 </td>
     </tr>
           </table>
       </div>
   </form>
</body>
</html>
