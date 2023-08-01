<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="FYP_RS.contact" %>

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
                        <li class="nav-item">
                            <a class="nav-link" href="about.aspx">About</a>
                        </li>
                        <li class="nav-item active">
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
    <!-- contact section start -->
    <div class="contact_section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="contact_taital">Get In Touch</h1>
                    <div class="bulit_icon">
                        <img src="images/bulit-icon.png">
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="contact_section_2">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mail_section_1">
                            <input type="text" class="mail_text" placeholder="Your Name" name="Your Name">
                            <input type="text" class="mail_text" placeholder="Your Email" name="Your Email">
                            <input type="text" class="mail_text" placeholder="Your Phone" name="Your Phone">
                            <textarea class="massage-bt" placeholder="Issue" rows="5" id="comment" name="issue"></textarea>
                            <div class="send_bt"><a href="#">SEND</a></div>
                            <br />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- contact section end -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
