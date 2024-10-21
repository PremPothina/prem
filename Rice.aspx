<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rice.aspx.cs" Inherits="JIO_MART.Rice" %>

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
  
    .quantity-controls {
        display: none;
        align-items: center;
        justify-content: center;
    }

    .quantity-controls button {
        background-color: #f8f9fa;
        border: 1px solid #ced4da;
        color: #495057;
        font-size: 1rem;
        padding: 0.375rem 0.75rem;
        cursor: pointer;
    }

    .quantity-controls button:hover {
        background-color: #e9ecef;
    }

    .add-to-cart-button {
        background-color: #28a745;
        border-color: #28a745;
        color: white;
        padding: 0.375rem 4.0rem;
        font-size: 1rem;
        cursor: pointer;
        display: inline-block;
        align-items: center;
        justify-content: center;
    }

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="image-gallery">
            <table>
                <tr>
                    <td><img src="https://www.bigbasket.com/media/uploads/p/l/40287714_1-india-gate-basmati-rice-everyday.jpg" alt="Basmati Rice" /><br />
                       <asp:Label ID="Label1" runat="server" Text="Basmati Rice" Font-Bold="true"  CssClass="image-label" />
                         <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
                        <p><small>50%OFF</small></p>
                     <div class="product">
                    <button class="add-to-cart-button">Add to Cart</button>
                    <div class="quantity-controls">
                        <button class="decrement">-</button>
                        <span class="quantityValue">0</span>
                        <button class="increment">+</button>
                    </div>
                </div>

                    </td>

                    <td><img src="https://www.kolkatarice.com/wp-content/uploads/2022/11/cover-Daawat-Sorted-Long-Grain-Sella-Rice.jpg" alt="Long Grain Rice" /><br />
                         <asp:Label ID="Label2" runat="server" Text="Long Grain Rice" Font-Bold="true"  CssClass="image-label" />
                         <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
                        <p><small>50%OFF</small></p>
                                                <div class="product">
    <button class="add-to-cart-button">Add to Cart</button>
    <div class="quantity-controls">
        <button class="decrement">-</button>
        <span class="quantityValue">0</span>
        <button class="increment">+</button>
    </div>
</div>
                    </td>
                    <td><img src="https://5.imimg.com/data5/SELLER/Default/2022/4/HK/PF/RP/80668939/short-grain-rice-500x500.jpeg" alt="Short Grain Rice" /><br />
                         <asp:Label ID="Label3" runat="server" Text="Short Grain Rice" Font-Bold="true"  CssClass="image-label" />
                         <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
                        <p><small>50%OFF</small></p>
                                        <div class="product">
                    <button class="add-to-cart-button">Add to Cart</button>
                    <div class="quantity-controls">
                        <button class="decrement">-</button>
                        <span class="quantityValue">0</span>
                        <button class="increment">+</button>
                    </div>
                </div>

                    </td>
                        </tr> 
                <tr>                 
                    <td><img src="https://i5.walmartimages.com/asr/21d692d9-454e-4cf4-8423-f906a372eb1c.5871e9e6134486e85877f3931265fcda.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF" alt="Arborio Rice" /><br />
                         <asp:Label ID="Label4" runat="server" Text="Arborio Rice" Font-Bold="true"  CssClass="image-label" />
                         <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
                        <p><small>50%OFF</small></p>
                                        <div class="product">
                    <button class="add-to-cart-button">Add to Cart</button>
                    <div class="quantity-controls">
                        <button class="decrement">-</button>
                        <span class="quantityValue">0</span>
                        <button class="increment">+</button>
                    </div>
                </div>

                    </td>
                    <td><img src="https://5.imimg.com/data5/SELLER/Default/2021/4/CI/LQ/WM/8420590/jasmine-500x500.jpg" alt="Jasmine Rice" /><br />
                         <asp:Label ID="Label5" runat="server" Text="Jasmine Rice" Font-Bold="true"  CssClass="image-label" />
                         <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p>  
                        <p><small>50%OFF</small></p>
                                        <div class="product">
                    <button class="add-to-cart-button">Add to Cart</button>
                    <div class="quantity-controls">
                        <button class="decrement">-</button>
                        <span class="quantityValue">0</span>
                        <button class="increment">+</button>
                    </div>
                </div>

                    </td>
                    <td><img src="https://5.imimg.com/data5/YF/GQ/MY-17045879/wild-rice.jpg" alt="Wild Rice" /><br />
                         <asp:Label ID="Label6" runat="server" Text="Wild Rice" Font-Bold="true"  CssClass="image-label" />
                            <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
                        <p><small>50%OFF</small></p>
                                        <div class="product">
                    <button class="add-to-cart-button">Add to Cart</button>
                    <div class="quantity-controls">
                        <button class="decrement">-</button>
                        <span class="quantityValue">0</span>
                        <button class="increment">+</button>
                    </div>
                </div>

                    </td></tr>

                <tr> 
                      <td><img src="https://www.mystore.in/s/62ea2c599d1398fa16dbae0a/64d9f2940868bd3d45e1b4c7/8901537024090-1-480x480.jpg" alt="Wild Rice" /><br />
                        <asp:Label ID="Label7" runat="server" Text="DAWAAT" Font-Bold="true"  CssClass="image-label" />
                           <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
                          <p><small>50%OFF</small></p>
                                          <div class="product">
                    <button class="add-to-cart-button">Add to Cart</button>
                    <div class="quantity-controls">
                        <button class="decrement">-</button>
                        <span class="quantityValue">0</span>
                        <button class="increment">+</button>
                    </div>
                </div>

                        </td>
                      <td><img src="https://m.media-amazon.com/images/I/61ERejQbKnL.jpg" alt="royal basmeti rice" /><br />
       <asp:Label ID="Label8" runat="server" Text="Royal Basmeti Rice" Font-Bold="true"  CssClass="image-label" />
                            <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
                          <p><small>50%OFF</small></p>
                                                  <div class="product">
    <button class="add-to-cart-button">Add to Cart</button>
    <div class="quantity-controls">
        <button class="decrement">-</button>
        <span class="quantityValue">0</span>
        <button class="increment">+</button>
    </div>
</div>
  </td>
                      <td><img src="https://asset20.ckassets.com/blog/wp-content/uploads/sites/5/2021/12/Kohinoor-Basmati-Rice-1024x512.jpg" alt="Wild Rice" /><br />
       <asp:Label ID="Label9" runat="server" Text="Kohinoor" Font-Bold="true"  CssClass="image-label" />
                          <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p>  
                          <p><small>50%OFF</small></p>
                                                  <div class="product">
    <button class="add-to-cart-button">Add to Cart</button>
    <div class="quantity-controls">
        <button class="decrement">-</button>
        <span class="quantityValue">0</span>
        <button class="increment">+</button>
    </div>
</div>
  </td></tr>

                <tr> 
                      <td><img src="https://5.imimg.com/data5/SELLER/Default/2021/5/KQ/ML/FP/128956826/bell-organic-sortex-rice-500x500.jpg" alt="Wild Rice" /><br />
       <asp:Label ID="Label10" runat="server" Text="Bell" Font-Bold="true"  CssClass="image-label" />
                            <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
                          <p><small>50%OFF</small></p>
                                                  <div class="product">
    <button class="add-to-cart-button">Add to Cart</button>
    <div class="quantity-controls">
        <button class="decrement">-</button>
        <span class="quantityValue">0</span>
        <button class="increment">+</button>
    </div>
</div>
  </td>
  <td><img src="https://cdn.shopaccino.com/edible-smart/products/570389_s.png?v=503" alt="Wild Rice" /><br />
       <asp:Label ID="Label11" runat="server" Text="Lalitha" Font-Bold="true"  CssClass="image-label" />
      <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
      <p><small>50%OFF</small></p>
                              <div class="product">
    <button class="add-to-cart-button">Add to Cart</button>
    <div class="quantity-controls">
        <button class="decrement">-</button>
        <span class="quantityValue">0</span>
        <button class="increment">+</button>
    </div>
</div>
  </td>
                      <td><img src="https://5.imimg.com/data5/SELLER/Default/2023/10/350086052/AL/UU/MA/160773181/mango-brand-kurnool-sona-rice.jpg" alt="Wild Rice" /><br />
       <asp:Label ID="Label12" runat="server" Text="999" Font-Bold="true"  CssClass="image-label" />
                          <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
                          <p><small>50%OFF</small></p>
                                                  <div class="product">
    <button class="add-to-cart-button">Add to Cart</button>
    <div class="quantity-controls">
        <button class="decrement">-</button>
        <span class="quantityValue">0</span>
        <button class="increment">+</button>
    </div>
</div>
  </td></tr>
                <tr> 
                      <td><img src="https://www.indiagatefoods.com/wp-content/uploads/2022/02/IG-Ecom-banners-1000x1000pix_Tibar_5kg_1.png" alt="Wild Rice" /><br />
       <asp:Label ID="Label13" runat="server" Text="Tibar" Font-Bold="true"  CssClass="image-label" />
                            <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
                          <p><small>50%OFF</small></p>
                                                  <div class="product">
    <button class="add-to-cart-button">Add to Cart</button>
    <div class="quantity-controls">
        <button class="decrement">-</button>
        <span class="quantityValue">0</span>
        <button class="increment">+</button>
    </div>
</div>
  </td>
                      <td><img src="https://tiimg.tistatic.com/fp/1/004/940/mumtaz-brand-basmati-rice-909.jpg" alt="Wild Rice" /><br />
       <asp:Label ID="Label14" runat="server" Text="Mumtaz" Font-Bold="true"  CssClass="image-label" />
                            <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p>  
                          <p><small>50%OFF</small></p>
                                                  <div class="product">
    <button class="add-to-cart-button">Add to Cart</button>
    <div class="quantity-controls">
        <button class="decrement">-</button>
        <span class="quantityValue">0</span>
        <button class="increment">+</button>
    </div>
</div>
  </td>
                      <td><img src="https://m.media-amazon.com/images/I/71dLZk7MKTL.jpg" alt="Wild Rice" /><br />
       <asp:Label ID="Label15" runat="server" Text="Jaykissan" Font-Bold="true"  CssClass="image-label" />
                           <p class="price" style="font-size:large"><b> ₹199</b> <small><s style="color: dimgrey"> ₹399 </s></small> </p> 
                          <p><small>50%OFF</small></p>
                                                  <div class="product">
    <button class="add-to-cart-button">Add to Cart</button>
    <div class="quantity-controls">
        <button class="decrement">-</button>
        <span class="quantityValue">0</span>
        <button class="increment">+</button>
    </div>
</div>
  </td>
      </tr>
            </table>
        </div>
    </form>
  <script>
      document.querySelectorAll('.add-to-cart-button').forEach(button => {
          button.addEventListener('click', function (event) {
              event.preventDefault();
              var quantityValue = this.parentNode.querySelector('.quantityValue');
              var value = parseInt(quantityValue.innerText);
              quantityValue.innerText = value + 1;
              this.style.display = 'none';
              this.parentNode.querySelector('.quantity-controls').style.display = 'flex';
          });
      });

      document.querySelectorAll('.increment').forEach(button => {
          button.addEventListener('click', function (event) {
              event.preventDefault();
              var quantityValue = this.parentNode.querySelector('.quantityValue');
              var value = parseInt(quantityValue.innerText);
              quantityValue.innerText = value + 1;
          });
      });

      document.querySelectorAll('.decrement').forEach(button => {
          button.addEventListener('click', function (event) {
              event.preventDefault();
              var quantityValue = this.parentNode.querySelector('.quantityValue');
              var value = parseInt(quantityValue.innerText);
              if (value > 0) {
                  quantityValue.innerText = value - 1;
              }

              if (value === 1) {
                  this.parentNode.parentNode.querySelector('.add-to-cart-button').style.display = 'flex';
                  this.parentNode.style.display = 'none';
              }
          });
      });
  </script>


</body>
</html>
