<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="upcomingprojects.aspx.cs" Inherits="FYP_RS.upcomingprojects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                        <li class="nav-item">
                            <a class="nav-link" href="stores.aspx">Stores</a>
                        </li>
                        <li class="nav-item active">
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
    <!-- blog section start -->
    <div class="blog_section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="about_taital">Upcoming Projects</h1>
                    <div class="bulit_icon">
                        <img src="images/bulit-icon.png">
                    </div>
                </div>
            </div>
            <div class="blog_section_2">
                <div class="row">
                    <div class="col-md-6">
                        <div class="blog_box">
                            <div class="blog_img">
                                <img src="images/car-shirt.jpg">
                            </div>
                            <h4 class="date_text">05 April</h4>
                            <h4 class="prep_text">Personalised Car T-Shirt</h4>
                            <p class="lorem_text">
                                Rev it up with customized Car T-Shirts, Sweats and more!
Attention car lovers: Now you don’t have to hide it any longer – show the world that you love that Ferrari, Thunderbird or Mustang with customized t-shirts and sweats.

Want some inspiration on how to do that? ThatShirt’s online customization lab has everything you need to turn your ignitions on. Want more power? Design and upload your own Car T-shirt designs and messages, and have us print them on your car-lovers garments.

At ThatShirt, we’ll print your car Tshirts in 14 days or less, and we’ll even ship them to you for FREE! So call us 7-days a week and we’ll help you put your love for cars into high-gear!
                            </p>
                        </div>
                        <div class="read_bt"><a href="#">Read More</a></div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog_box">
                            <div class="blog_img">
                                <img src="images/anime.jpg">
                            </div>
                            <h4 class="date_text">05 April</h4>
                            <h4 class="prep_text">Anime Inspired Outfit</h4>
                            <p class="lorem_text">
                                Produce dazzling Anime merch and more at RealMeta.
Do you have a favourite animated character or gaming hero that you truly idolize? Well, wouldn’t it be cool to have your idols go with you, wherever you go?

At ThatShirt, we make that possible! Simply go online and pick a product from hundreds available – Shirts, t-shirts, sweatshirts, vests, hoodies…and much more. Then, choose from our library of characters, or design and upload your own.

We’ll have your favourite animated character printed on your shirt or tshirt, and shipped to you within 14 days or less – for FREE. Want it faster? Our customer support agents are available 7-days a week. Just ask them about Rush Shipping!
                            </p>
                        </div>
                        <div class="read_bt"><a href="#">Read More</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- blog section end -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
