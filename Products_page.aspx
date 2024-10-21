
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products_page.aspx.cs" Inherits="JIO_MART.Products_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="image-grid">
        <asp:Repeater ID="rptmainitems" runat="server">
         <ItemTemplate>
                <div>
                <a href='<%# "Items_page.aspx?Main_item_id=" + Eval("Main_item_id") %>'>
                <asp:Image ID="ImageButtonItem" runat="server" ImageUrl='<%# GetImageUrl(Eval("Image")) %>' Height="100" Width="100" />
                </a>
                <br/>
                <asp:Label ID="LabelItemName" runat="server" Text='<%# Eval("Main_item_names") %>'></asp:Label>
                </div>
        </ItemTemplate>
        </asp:Repeater>
        </div>
</asp:Content>
