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
                        <button class="cart-button" type="button">Add to Cart</button>
                        <div class="quantity-controls" style="display:none;">
                            <input type="hidden" class="quantity-hidden" value="1" />
                            <button class="btnDecrement" type="button">-</button>
                            <span class="quantity-label">1</span>
                            <button class="btnIncrement" type="button">+</button>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div id="related-items"></div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


    <script>
        $(document).ready(function () {
            // Use event delegation to handle clicks on dynamically generated elements
            $(document).on('click', '.cart-button', function () {
                var button = $(this);
                button.hide();
                button.siblings('.quantity-controls').show();
            });

            $(document).on('click', '.btnIncrement', function () {
                var button = $(this);
                var quantityHidden = button.siblings('.quantity-hidden');
                var quantityLabel = button.siblings('.quantity-label');
                var currentQuantity = parseInt(quantityHidden.val());
                quantityHidden.val(currentQuantity + 1);
                quantityLabel.text(currentQuantity + 1);
            });

            $(document).on('click', '.btnDecrement', function () {
                var button = $(this);
                var quantityHidden = button.siblings('.quantity-hidden');
                var quantityLabel = button.siblings('.quantity-label');
                var currentQuantity = parseInt(quantityHidden.val());
                if (currentQuantity > 1) {
                    quantityHidden.val(currentQuantity - 1);
                    quantityLabel.text(currentQuantity - 1);
                } else {
                    button.parent('.quantity-controls').hide();
                    button.parent().siblings('.cart-button').show();
                }
            });
        });

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
    </script>
</asp:Content>



