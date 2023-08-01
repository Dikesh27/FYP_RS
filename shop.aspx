<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="FYP_RS.shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- head section -->
<div class="header_section">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="home.aspx">
                    <img src="images/main-logo.jpg"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="home.aspx">Home</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="stores.aspx">Stores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="upcomingprojects.aspx">Upcoming Project</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.aspx">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.aspx">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="MyCart.aspx">My Cart</a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <div class="login_bt">
                            <ul>
                                <li><a href="customer_login.aspx"><span class="user_icon"><i class="fa fa-user" aria-hidden="true"></i></span>Log Out</a></li>
                            </ul>
                        </div>
                    </form>
                </div>
            </nav>
        </div>
    </div>
    <!-- header section end -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="row">
            <h1 class="coffee_taital">Calvin Klein</h1>
            <div class="bulit_icon">
                <img src="images/bulit-icon.png">
            </div>
        </div>
    </div>
    <div class="container">
        <asp:DataList ID="Datalist1" runat="server" DataSourceID="SqlDataSource" Height="500px" RepeatDirection="Horizontal" RepeatColumns="4" CellSpacing="30">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Image ID="img" runat="server" Height="400px" Width="400px" ImageUrl='<%# Eval("p_imagepath") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="brand" runat="server" Text='<%# Eval("p_brand") %>' Font-Size="Larger"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("p_name") %>' Font-Size="Larger"></asp:Label>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="$ " Font-Size="Medium"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Font-Bold="true" Text='<%# Eval("p_price") %>' Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="btnPurchase" runat="server" CommandName="AddToCart" ImageUrl="images/buyPic.png" Height="60px" Width="200px" CommandArgument='<%# Eval("product_id") %>' OnClick="btnPurchase_Click" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [product_id], [p_imagepath], [p_brand], [p_name], [p_category], [p_price] FROM [product]"></asp:SqlDataSource>
    </div>
</asp:Content>

