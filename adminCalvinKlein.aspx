<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminCalvinKlein.aspx.cs" Inherits="FYP_RS.CalvinKleinAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="hero">
        <div class="container">
            <div class="d-flex justify-content-center">
                <div class="col-lg-6">
                    <h2 class="fw-normal mb-3 pb-3 d-flex justify-content-center">Add product</h2>
                    <asp:Label ID="mylab" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
                    <asp:TextBox runat="server" type="text" ID="pID" Visible="false" class="form-control"></asp:TextBox>
                    <div class="row">
                        <div class="col-sm-4 form-group mt-3 ">
                            <span>Product name: </span>
                        </div>
                        <div class="col form-group mt-2">
                            <asp:TextBox runat="server" type="text" name="name" class="form-control" ID="pName"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4 form-group mt-3 ">
                            <span>Brand name:</span>
                        </div>
                        <div class="col form-group mt-2">
                            <asp:TextBox runat="server" type="text" name="name" class="form-control" ID="pBrand"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4 form-group mt-3 ">
                            <span>Price (Rs):</span>
                        </div>
                        <div class="col form-group mt-2">
                            <asp:TextBox runat="server" type="number" name="name" class="form-control" ID="pPrice"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4 form-group mt-3 ">
                            <span>Quantity:</span>
                        </div>
                        <div class="col form-group mt-2">
                            <asp:TextBox runat="server" type="number" name="name" class="form-control" ID="pQuantity"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4 form-group mt-3 ">
                            <span>Image:</span>
                        </div>
                        <div class="col form-group mt-2">
                            <asp:FileUpload ID="pImage" runat="server" class="form-control" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4 form-group mt-3 ">
                            <span>Category:</span>

                        </div>
                        <div class="col form-group mt-2">
                            <asp:TextBox runat="server" type="text" name="name" class="form-control" ID="pCategory" Text="Calvin Klein" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group mt-3 d-flex justify-content-end">
                        <asp:Button ID="btnSubmit" runat="server" type="submit" class="btn btn-success" OnClick="btnSubmit_Click" Text="Submit" />
                        <asp:Button ID="btnClear" runat="server" type="submit" class=" btn btn-danger" Text="Clear" OnClick="btnClear_Click" />
                        <asp:Button ID="btnUpdate" runat="server" type="submit" class="btn btn-success" OnClick="btnUpdate_Click" Visible="false" Text="Update" />
                        <asp:Button ID="btnCancel" runat="server" type="submit" class="btn btn-danger" OnClick="btnCancel_Click" Visible="false" Text="Cancel" />

                    </div>



                </div>
            </div>
        </div>
    </section>
    <div class="col mt-5">
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="product_id" HeaderText="ID" SortExpression="product_id"></asp:BoundField>
                <asp:BoundField DataField="p_name" HeaderText="Product Name" SortExpression="p_name"></asp:BoundField>
                <asp:BoundField DataField="p_brand" HeaderText="Brand" SortExpression="p_brand"></asp:BoundField>
                <asp:BoundField DataField="p_price" HeaderText="Price" SortExpression="p_price"></asp:BoundField>
                <asp:BoundField DataField="p_quantity" HeaderText="Quantity" SortExpression="p_quantity"></asp:BoundField>



                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <img src="<%#Eval("p_imagepath")%>" style="width: 80px" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="p_category" HeaderText="Category" SortExpression="p_category"></asp:BoundField>

                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkdelete" OnClick="lnkdelete_Click" CssClass="btn btn-outline-danger" runat="server" CommandArgument='<%# Eval("product_id") %>' ToolTip="Remove User">
                                    <span class =""> Remove</span>
                        </asp:LinkButton>
                        <asp:LinkButton ID="lnkUpdate" OnClick="lnkUpdate_Click" CssClass="btn btn-outline-info" runat="server" CommandArgument='<%# Eval("product_id") %>' ToolTip="Remove User">
                                    <span class =""> Update</span>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
