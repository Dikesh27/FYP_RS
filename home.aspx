<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FYP_RS.home" %>

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
                        <li class="nav-item active">
                            <a class="nav-link" href="home.aspx">Home</a>
                        </li>
                        <li class="nav-item">
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

    <!-- banner section start -->
    <div class="banner_section layout_padding">
        <div class="container">
            <!-- <div class="banner_img"> -->
            <!--   <img src="images/banner-bg.png"></div> -->
            <div id="banner_slider" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="banner_img">
                                    <img src="images/shirt.jpg">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="banner_taital_main">
                                    <h1 class="banner_taital">T-Shirts</h1>
                                    <h5 class="tasty_text">Stand Out From The Crowd</h5>
                                    <p class="banner_text">For those who understand style  </p>
                                    <div class="btn_main">
                                        <div class="about_bt"><a href="#">About Us</a></div>
                                        <div class="callnow_bt"><a href="#">Call Now</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="banner_img">
                                    <img src="images/poloshirt.jpg">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="banner_taital_main">
                                    <h1 class="banner_taital">Poloshirts</h1>
                                    <h5 class="tasty_text">Stand Out From The Crowd</h5>
                                    <p class="banner_text">For those who understand style  </p>
                                    <div class="btn_main">
                                        <div class="about_bt"><a href="#">About Us</a></div>
                                        <div class="callnow_bt"><a href="#">Call Now</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="banner_img">
                                    <img src="images/pant.jpg">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="banner_taital_main">
                                    <h1 class="banner_taital">Pants</h1>
                                    <h5 class="tasty_text">Stand Out From The Crowd</h5>
                                    <p class="banner_text">For those who understand style </p>
                                    <div class="btn_main">
                                        <div class="about_bt"><a href="#">About Us</a></div>
                                        <div class="callnow_bt"><a href="#">Call Now</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#banner_slider" role="button" data-slide="prev">
                    <i class="fa fa-arrow-left"></i>
                </a>
                <a class="carousel-control-next" href="#banner_slider" role="button" data-slide="next">
                    <i class="fa fa-arrow-right"></i>
                </a>
            </div>
        </div>
    </div>
    <!-- banner section end -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
