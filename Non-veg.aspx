<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Non-veg.aspx.cs" Inherits="JIO_MART.Non_veg" %>

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
                    <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/800487159_2-tamilnadu-mutton-and-chicken-chicken-country-chicken-live-skin-on-curry-cut.jpg" alt="Chicken" /><br />
                       <asp:Label ID="Label1" runat="server" Text="Chicken" Font-Bold="true"  CssClass="image-label" /></td>

                    <td><img src="https://www.bigbasket.com/media/uploads/p/l/40081296_4-fresho-chicken-biryani-cut.jpg" alt="chicken-biriyani-cut" /><br />
                         <asp:Label ID="Label2" runat="server" Text="Chicken-biriyani cut" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://static.freshtohome.com/media/catalog/product/cache/1/image/18ae109e34f485bd0b0c075abec96b2e/c/h/chicken_breast_fillet_1.jpg" alt="chicken boneless" /><br />
                         <asp:Label ID="Label3" runat="server" Text="chicken-Boneless" Font-Bold="true"  CssClass="image-label" />
                    </td>
                        </tr> 
                <tr>                 
                    <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/40048914_4-fresho-mutton-boneless-antibiotic-residue-free-growth-hormone-frees.jpg" alt="Mutton Boneless" /><br />
                         <asp:Label ID="Label4" runat="server" Text="Mutton Boneless" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://www.bigbasket.com/media/uploads/p/l/40048912_4-fresho-mutton-curry-cut-from-whole-carcass-antibiotic-residue-free-growth-hormone-free-8-10-pcs.jpg" alt="Mutton-curry-cut" /><br />
                         <asp:Label ID="Label5" runat="server" Text="Mutton-curry-cut" Font-Bold="true"  CssClass="image-label" />
                    </td>
                    <td><img src="https://www.bigbasket.com/media/uploads/p/l/30002283_4-fresho-mutton-liver-antibiotic-residue-free-growth-hormone-free.jpg" alt="Mutton-Leaver" /><br />
                         <asp:Label ID="Label6" runat="server" Text="Mutton-Leaver" Font-Bold="true"  CssClass="image-label" />
                    </td></tr>

                <tr> 
                      <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/10000916_11-fresho-chicken-liver-antibiotic-residue-free.jpg" alt="Chicken-Leaver" /><br />
                        <asp:Label ID="Label7" runat="server" Text="Chicken-Leaver" Font-Bold="true"  CssClass="image-label" />
                        </td>
                      <td><img src="https://www.jiomart.com/images/product/original/590000090/potato-1-kg-product-images-o590000090-p590000090-0-202207291750.jpg?im=Resize=(420,420https://www.bigbasket.com/media/uploads/p/l/40227640-3_1-fresho-mutton-lamb-rack-fresh-fleshy-juicy-tender-pieces.jpg" alt="Mutton Rack" /><br />
       <asp:Label ID="Label8" runat="server" Text="Mutton Rack" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://www.bigbasket.com/media/uploads/p/l/20000963_3-fresho-rohu-fish-large-curry-cutbengali-cut-preservative-free.jpg" alt="Fish-curry cut" /><br />
       <asp:Label ID="Label9" runat="server" Text="Fish-curry cut" Font-Bold="true"  CssClass="image-label" />
  </td></tr>

                <tr> 
                      <td><img src="https://www.bigbasket.com/media/uploads/p/xl/40227710_1-fresho-pangas-basa-curry-cut-cubes-fresh-flavorful.jpg" alt="Fish-curry cut cubes" /><br />
       <asp:Label ID="Label10" runat="server" Text="Fish-curry cut cubes" Font-Bold="true"  CssClass="image-label" />
  </td>
  <td><img src="https://www.bigbasket.com/media/uploads/p/xxl/10000972_11-fresho-white-prawns-medium-unpeeled-20-30-pcs.jpg" alt="Prawns" /><br />
       <asp:Label ID="Label11" runat="server" Text="Prawns" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://www.bigbasket.com/media/uploads/p/l/800480628_2-meat-mart-crab-curry-cut.jpg" alt="Crab" /><br />
       <asp:Label ID="Label12" runat="server" Text="Crab" Font-Bold="true"  CssClass="image-label" />
  </td></tr>
                <tr> 
                      <td><img src="https://www.bigbasket.com/media/uploads/p/l/40094159_3-fresho-farm-eggs-jumbo-large-antibiotic-residue-free.jpg" alt="Farm Eggs" /><br />
       <asp:Label ID="Label13" runat="server" Text="Farm Eggs" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://5.imimg.com/data5/ECOM/Default/2023/8/333878540/QX/ZE/JB/121236174/1690973123193-31gqcwvzxl-500x500.jpeg" alt="Eggs" /><br />
       <asp:Label ID="Label14" runat="server" Text="Eggs" Font-Bold="true"  CssClass="image-label" />
  </td>
                      <td><img src="https://www.bigbasket.com/media/uploads/p/xl/40087290-2_1-fresho-tuna-fish.jpg" alt="Tuna Fish" /><br />
       <asp:Label ID="Label15" runat="server" Text="Tuna Fish" Font-Bold="true"  CssClass="image-label" />
  </td>
      </tr>
            </table>
        </div>
    </form>
</body>
</html>
