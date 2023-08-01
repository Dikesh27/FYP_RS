<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="FYP_RS.about" %>

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
                        <li class="nav-item">
                            <a class="nav-link" href="upcomingprojects.aspx">Upcoming Project</a>
                        </li>
                        <li class="nav-item active">
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
    <!-- about section start -->
    <div class="about_section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="about_taital">About Our store</h1>
                    <div class="bulit_icon">
                        <img src="images/bulit-icon.png">
                    </div>
                </div>
            </div>
            <div class="about_section_2 layout_padding">
                <div class="container">
                    <img src="images/store.jpg" class="about_img">
                </div>

                <br />

                <div class="container">
                    <h1 class="about_taital_1">RealMeta Clothing Store</h1>

                    <p class=" about_text">
                        Welcome to RealMeta, your ultimate destination for stylish and trendy fashion! We are thrilled to 
                            present a shopping experience that combines exceptional quality, cutting-edge designs, and unparalleled customer service.
                            <br />
                        <br />
                        At RealMeta, we understand that fashion is an expression of your unique personality and individuality. That's why our diverse collection
                            of clothing is carefully curated to cater to every taste, occasion, and lifestyle. Whether you're looking for sophisticated formal attire,
                            casual everyday essentials, or the latest fashion-forward statement pieces, we have something to suit your every need.
                            <br />
                        <br />
                        Our commitment to excellence extends beyond our product range. We believe that every customer deserves exceptional service, 
                            and our knowledgeable and friendly staff are always ready to assist you in finding the perfect outfit or providing style advice.
                            We strive to create a warm and inviting atmosphere where you can explore the latest trends and discover your personal style.
                            <br />
                        <br />
                        Quality is at the heart of everything we do. We collaborate with renowned designers and select our materials with the utmost care,
                            ensuring that our clothing is not only stylish but also durable and comfortable to wear. We believe in creating fashion that lasts,
                            making us your go-to destination for timeless wardrobe staples.
                            <br />
                        <br />
                        Visit RealMeta today and embark on a fashion journey like no other. Discover a world of style possibilities and indulge 
                            in the joy of finding the perfect outfit. Elevate your fashion game with us and make a statement wherever you go.


                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- about section end -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
