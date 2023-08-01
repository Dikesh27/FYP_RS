<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="customer_login.aspx.cs" Inherits="FYP_RS.customer_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="header_section">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="home.aspx">
                    <img src="images/main-logo.jpg"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
               <%-- <div class="collapse navbar-collapse" id="navbarSupportedContent">
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
                    </ul>
                    <div class="form-inline my-2 my-lg-0">
                        <div class="login_bt">
                            <ul>
                                <li><a href="#"><span class="user_icon"><i class="fa fa-user" aria-hidden="true"></i></span>Login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>--%>
            </nav>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />

    <div class="container">

        <div>

            <!-- Email input -->
            <div class="form-outline mb-4">
                <asp:TextBox runat="server" type="text" name="name" class="form-control" ID="uname" placeholder="username"></asp:TextBox>
                <label class="form-label" for="form2Example1">Email address</label>
            </div>

            <!-- Password input -->
            <div class="form-outline mb-4">
                <asp:TextBox runat="server" type="password" name="name" class="form-control" ID="pword" placeholder="Password"></asp:TextBox>

                <label class="form-label" for="form2Example2">Password</label>
            </div>

            <asp:Label ID="mylab" runat="server" CssClass="text-danger" Visible="false"></asp:Label>


            <!-- 2 column grid layout for inline styling -->
            <div class="row mb-4">
                <div class="col d-flex justify-content-center">

                    <!-- Checkbox -->
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                        <label class="form-check-label" for="form2Example31">Remember me </label>
                    </div>
                </div>

                <div class="col">
                    <!-- Simple link -->
                    <a href="#!">Forgot password?</a>
                </div>
            </div>

            <!-- Submit button -->

            <asp:Button ID="Button1" runat="server" type="submit" class="btn btn-primary btn-block mb-4" Text="Sign in" OnClick="Button1_Click" />


            <!-- Register buttons -->
            <div class="text-center">
                <p>Not a member? <a href="registration.aspx">Register</a></p>
            </div>

            <div class="text-center">
                <p>or</p>
            </div>
                <!-- Simple link -->              
            <div class="text-center">
                <p>Login as <a href="loginAdmin.aspx">Administrator</a></p>
            </div>
        </div>

    </div>

</asp:Content>
