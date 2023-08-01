<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="stores.aspx.cs" Inherits="FYP_RS.stores" %>

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

    <!-- coffee section start -->
    <div class="coffee_section layout_padding">
        <div class="container">
            <div class="row">
                <h1 class="coffee_taital">Clothing Stores</h1>
                <div class="bulit_icon">
                    <img src="images/bulit-icon.png">
                </div>
            </div>
        </div>
        <div class="coffee_section_2">
            <div id="main_slider" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/CK-logo.jpg">
                                    </div>
                                    <h3 class="types_text">Calvin Klein</h3>
                                    <div class="read_bt"><a href="shop.aspx">Read More</a></div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/Gucci-logo.jpg">
                                    </div>
                                    <h3 class="types_text">Gucci</h3>
                                    <div class="read_bt"><a href="gucci.aspx">Read More</a></div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/armani3.png">
                                    </div>
                                    <h3 class="types_text">Giorgio Armani</h3>
                                    <div class="read_bt"><a href="armani.aspx">Read More</a></div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/LV-logo.jpg">
                                    </div>
                                    <h3 class="types_text">Louis Vuitton</h3>
                                    <div class="read_bt"><a href="louisvuitton.aspx">Read More</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/CK-logo.jpg">
                                    </div>
                                    <h3 class="types_text">Calvin Klein</h3>
                                    <div class="read_bt"><a href="CalvinKlein.aspx">Read More</a></div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/Gucci-logo.jpg">
                                    </div>
                                    <h3 class="types_text">Gucci</h3>
                                    <div class="read_bt"><a href="gucci.aspx">Read More</a></div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/armani3.png">
                                    </div>
                                    <h3 class="types_text">Giorgio Armani</h3>
                                    <div class="read_bt"><a href="armani.aspx">Read More</a></div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/LV-logo.jpg">
                                    </div>
                                    <h3 class="types_text">Louis Vuitton</h3>
                                    <div class="read_bt"><a href="louisvuitton.aspx">Read More</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/CK-logo.jpg">
                                    </div>
                                    <h3 class="types_text">Calvin Klein</h3>
                                    <div class="read_bt"><a href="#">Read More</a></div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/Gucci-logo.jpg">
                                    </div>
                                    <h3 class="types_text">Gucci</h3>
                                    <div class="read_bt"><a href="gucci.aspx">Read More</a></div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/armani3.png">
                                    </div>
                                    <h3 class="types_text">Giorgio Armani</h3>
                                    <div class="read_bt"><a href="armani.aspx">Read More</a></div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="coffee_img">
                                        <img src="images/LV-logo.jpg">
                                    </div>
                                    <h3 class="types_text">Louis Vuitton</h3>
                                    <div class="read_bt"><a href="louisvuitton.aspx">Read More</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                </div>
                <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
                    <i class="fa fa-arrow-left"></i>
                </a>
                <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
                    <i class="fa fa-arrow-right"></i>
                </a>
            </div>
        </div>
    </div>
    <!-- coffee section end -->

    <!-- product section -->
    <div class="row">
        <div class=" d-flex justify-content-center">
            <div style="margin: 30px;">
                <div class="coffee_section_2">
                    <h1>popular choices</h1>
                    <br />
                    <asp:DataList ID="Datalist1" runat="server" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <div style="text-align: center">
                                <img src="../<%# Eval("p_imagepath")%>" style="width: 450px; height: 450px; padding-right: 30px" />

                            </div>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("p_name")%>'> </asp:Label>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
    <!-- product section end -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
