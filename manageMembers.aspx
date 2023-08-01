<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="manageMembers.aspx.cs" Inherits="FYP_RS.manageMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="hero">
        <div class="container">
            <div class="d-flex justify-content-center">
                <div class="col-lg-6">
                    <h2 class="fw-normal mb-3 pb-3 d-flex justify-content-center">Add Member</h2>
                    <asp:Label ID="mylab" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
                    <div class="row">
                        <div class="col-sm-4 form-group mt-3 ">
                            <span>Customer ID: </span>
                        </div>
                        <div class="col form-group mt-2">
                            <asp:TextBox runat="server" type="text" name="name" class="form-control" ID="CID"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4 form-group mt-3 ">
                            <span>First name:</span>
                        </div>
                        <div class="col form-group mt-2">
                            <asp:TextBox runat="server" type="text" name="name" class="form-control" ID="CFName"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4 form-group mt-3 ">
                            <span>Last Name:</span>
                        </div>
                        <div class="col form-group mt-2">
                            <asp:TextBox runat="server" type="text" name="name" class="form-control" ID="CLName"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4 form-group mt-3 ">
                            <span>Email:</span>
                        </div>
                        <div class="col form-group mt-2">
                            <asp:TextBox runat="server" type="email" name="name" class="form-control" ID="CEmail"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-4 form-group mt-3 ">
                            <span>Password:</span>

                        </div>
                        <div class="col form-group mt-2">
                            <asp:TextBox runat="server" type="text" name="name" class="form-control" ID="CPassword"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group mt-3 d-flex justify-content-end">
                        <asp:Button ID="btnSubmit" runat="server" type="submit" class="btn btn-success" Text="Submit" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnClear" runat="server" type="submit" class=" btn btn-danger" Text="Clear"  OnClick="btnClear_Click"/>
                        <asp:Button ID="btnUpdate" runat="server" type="submit" class="btn btn-success" Visible="false" Text="Update"  OnClick="btnUpdate_Click"/>
                        <asp:Button ID="btnCancel" runat="server" type="submit" class="btn btn-danger" Visible="false" Text="Cancel" OnClick="btnCancel_Click"/>

                    </div>



                </div>
            </div>
        </div>
    </section>
    <div class="col mt-5">
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="customerID" HeaderText="ID"></asp:BoundField>
                <asp:BoundField DataField="firstname" HeaderText="First Name"></asp:BoundField>
                <asp:BoundField DataField="lastname" HeaderText="Last Name"></asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="Email"></asp:BoundField>
                <asp:BoundField DataField="pasword" HeaderText="Password"></asp:BoundField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkdelete" OnClick="lnkdelete_Click" CssClass="btn btn-outline-danger" runat="server" CommandArgument='<%# Eval("customerID") %>' ToolTip="Remove User">
                                    <span class =""> Remove</span>
                        </asp:LinkButton>
                        <asp:LinkButton ID="lnkUpdate" OnClick="lnkUpdate_Click" CssClass="btn btn-outline-info" runat="server" CommandArgument='<%# Eval("customerID") %>' ToolTip="Remove User">
                                    <span class =""> Update</span>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>


        </asp:GridView>
    </div>
</asp:Content>
