<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="FYP_RS.MyCart" %>

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
                        <li class="nav-item active">
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
            <h1 class="coffee_taital">My Cart</h1>
            <div class="bulit_icon">
                <img src="images/bulit-icon.png">
            </div>
        </div>
        <div class="col mt-5">
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped"
            AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="p_name" HeaderText="Product Name"></asp:BoundField>
                <asp:BoundField DataField="p_name" HeaderText="Brand"></asp:BoundField>
                <asp:BoundField DataField="qty" HeaderText="Quantity"></asp:BoundField>
                <asp:BoundField DataField="p_category" HeaderText="Category"></asp:BoundField>
                </Columns>          
        </asp:GridView>
            </div>
      
    </div>
</asp:Content>
