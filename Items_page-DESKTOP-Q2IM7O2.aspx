<%--<%@ Page Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Items_page.aspx.cs" Inherits="JIO_MART.Items_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
  .image-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-gap: 50px;
    text-align: center; /* Align buttons to the center */
}

.image-item {
    width: 100%;
    height: 100px;
    cursor: pointer;
    padding: 10px; /* Add padding here */
    box-sizing: border-box; /* Include padding in the element's total width and height */
}

#related-images {
    margin-top: 20px;
}

/* Center the form content vertically */
#form1 {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh; /* Set form height to full viewport height */
}
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
   .cart-button {
            background-color: #007bff; /* Blue color, you can change this */
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        /* Style for the cart button on hover */
        .cart-button:hover {
            background-color: #0056b3; /* Darker blue color on hover, you can change this */
        }
         /* Style for the cart symbol */
        .cart-symbol {
            position: fixed;
            top: 20px;
            right: 20px;
            background-color: #007bff; /* Blue color, you can change this */
            color: white;
            padding: 10px;
            border-radius: 50%;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="image-gallery"> 
        <div class="image-grid">
           <asp:Repeater ID="rptItems" runat="server">
    <ItemTemplate>
        <div class="item">
            <asp:Image ID="imgItem" runat="server" ImageUrl='<%# Eval("FileName", "~/Images/{0}") %>' Height="100" Width="100" />
            <br />
            <asp:Label ID="LabelItemName" runat="server" Text='<%# Eval("ItemName") %>' />
            <br />
            <span style="text-decoration: line-through;">
                <asp:Label ID="LabelActualPrice" runat="server" Text='<%# Eval("ActualPrice", "{0:C}") %>' />
            </span>
            <asp:Label ID="LabelOfferPercentage" runat="server" Text='<%# Eval("OfferPercentage", "{0}% off") %>'  Font-Size="Small"/>
            <br />
            <asp:Label ID="LabelOfferPrice" runat="server" Text='<%# Eval("OfferPrice", "{0:C}") %>' />
            <br />
            <asp:Button ID="btnAddToCart" runat="server" CommandArgument='<%# Eval("ItemID") %>' CommandName="AddToCart" Text="Add to Cart" CssClass="cart-button" />
        </div>
    </ItemTemplate>
</asp:Repeater>

        <%--    <asp:Repeater ID="rptItems" runat="server" OnItemCommand="rptItems_ItemCommand">
        <ItemTemplate>
        <div>
           <asp:Image ID="imgItem" runat="server" ImageUrl='<%# Eval("FileName", "~/Images/{0}") %>' Height="100" Width="100" /><br />
            <asp:Label ID="LabelItemName" runat="server" Text='<%# Eval("ItemName") %>' />
            <br />
          <s>   <asp:Label ID="LabelActualPrice" runat="server" Text='<%# Eval("ActualPrice", "{0:C}") %>' /></s>
            
            <asp:Label ID="LabelOfferPercentage" runat="server" Text='<%# Eval("OfferPercentage", "{0}%") %>'  Font-Size="Small"/>
            <br />
            <asp:Label ID="LabelOfferPrice" runat="server" Text='<%# Eval("OfferPrice", "{0:C}") %>' /><br />
                  
            <asp:Button ID="btnAddToCart" runat="server" CssClass="cart-button" Text="Add to Cart" OnClick="btnAddToCart_Click" />
        </div>
    </ItemTemplate>
</asp:Repeater>--%>
<%-- <div class="cart-symbol">Cart</div>--%>
      <%--  </div>
         </div>
    </form>
    
</body>
</html>--%>

<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Items_page.aspx.cs" Inherits="JIO_MART.Items_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="image-gallery"> 
        <div class="image-grid">
            <asp:Repeater ID="rptItems" runat="server">
                <ItemTemplate>
                    <div class="item">
                        <asp:Image ID="imgItem" runat="server" ImageUrl='<%# Eval("FileName", "~/Images/{0}") %>' Height="100" Width="100" />
                        <br />
                        <asp:Label ID="LabelItemName" runat="server" Text='<%# Eval("ItemName") %>' />
                        <br />
                        <span style="text-decoration: line-through;">
                            <asp:Label ID="LabelActualPrice" runat="server" Text='<%# Eval("ActualPrice", "{0:C}") %>' />
                        </span>
                        <asp:Label ID="LabelOfferPercentage" runat="server" Text='<%# Eval("OfferPercentage", "{0}% off") %>'  Font-Size="Small"/>
                        <br />
                        <asp:Label ID="LabelOfferPrice" runat="server" Text='<%# Eval("OfferPrice", "{0:C}") %>' />
                        <br />
                      <asp:Button ID="btnAddToCart" runat="server" CssClass="cart-button" Text="Add to Cart" 
    CommandName="AddToCart" CommandArgument='<%# Eval("ItemName") %>' OnCommand="btnAddToCart_Command" />


    <!-- Quantity controls -->
   <div id="quantity-controls-<%# Eval("ItemName") %>" class="quantity-controls" style="display: none;">
    <asp:Button ID="btnDecrement" runat="server" CssClass="quantity-button" Text="-" OnClientClick='<%# "decrementQuantity(\"" + Eval("ItemName") + "\");" %>' />
    <asp:Label ID="lblQuantity" runat="server" Text="1" CssClass="quantity-label" />
    <asp:Button ID="btnIncrement" runat="server" CssClass="quantity-button" Text="+" OnClientClick='<%# "incrementQuantity(\"" + Eval("ItemName") + "\");" %>' />
</div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div id="related-items"></div>

    <script>
        function loadRelatedItems(mainItemId) {
            $.ajax({
                type: "POST",
                url: "Items_page.aspx/GetRelatedItems",
                data: JSON.stringify({ mainItemId: mainItemId }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    $("#related-items").html(response.d);
                },
                error: function (xhr, status, error) {
                    console.error("Error loading related items: " + error);
                }
            });
        }

        function incrementQuantity(itemName) {
            console.log('Incrementing quantity for item: ' + itemName);
            var lblQuantity = document.getElementById('lblQuantity-' + itemName);
            if (lblQuantity) {
                var quantity = parseInt(lblQuantity.innerText);
                quantity++;
                lblQuantity.innerText = quantity;
                toggleQuantityControls(itemName, true);
            }
        }

        function decrementQuantity(itemName) {
            console.log('Decrementing quantity for item: ' + itemName);
            var lblQuantity = document.getElementById('lblQuantity-' + itemName);
            if (lblQuantity) {
                var quantity = parseInt(lblQuantity.innerText);
                if (quantity > 1) {
                    quantity--;
                    lblQuantity.innerText = quantity;
                } else {
                    lblQuantity.innerText = 0;
                    toggleQuantityControls(itemName, false);
                }
            }
        }

        function toggleQuantityControls(itemName, show) {
            var quantityControls = document.getElementById('quantity-controls-' + itemName);
            if (quantityControls) {
                quantityControls.style.display = show ? 'block' : 'none';
            }
            var btnAddToCart = document.getElementById('btnAddToCart-' + itemName);
            if (btnAddToCart) {
                btnAddToCart.style.display = show ? 'none' : 'block';
            }
        }
    </script>
    </script>
</asp:Content>
