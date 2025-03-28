<%@ Page Title="" Language="C#" MasterPageFile="~/Client/clientMasterPage.master" AutoEventWireup="true" CodeFile="addtocart1.aspx.cs" Inherits="Client_addtocart1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<header class="site-header section-padding d-flex justify-content-center align-items-center">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-10 col-12">
                            <h1>
                                <span class="d-block text-primary">We provide you</span>
                                <span class="d-block text-dark">Fashionable Fabrics</span>
                            </h1>
                        </div>
                    </div>
                </div>
            </header>

<br /><br /><br /><br />
<center>
    <asp:Label ID="lblcart" runat="server" Text="ADD TO CART"></asp:Label>
    <br />
    <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblprice" runat="server" Text="Price"></asp:Label>
    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblquantity" runat="server" Text="Quantity"></asp:Label>
    <asp:TextBox ID="txtquantity" runat="server" 
        ontextchanged="txtquantity_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="quantity" runat="server" 
        ControlToValidate="txtquantity" ErrorMessage="Please Enter Quantity"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblimage" runat="server" Text="Image"></asp:Label>
    <asp:Image ID="img" runat="server" Width="187px" 
        ImageUrl='<%#Eval("image","~/admin/product/{0}") %>'  />
    <br />
    <asp:Label ID="lblusername" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbltotal" runat="server" Text="Total"></asp:Label>
    <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnaddtocart" runat="server" onclick="btnaddtocart_Click" 
        Text="ADD TO CART" />
    <br />
</center>

<section class="related-product section-padding border-top">
                <div class="container">
                    <div class="row">

                        <div class="col-12">
                            <h3 class="mb-5">You might also like</h3>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="product-detail.html">
                                    <img src="images/pro images/Denim/d11.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <span class="product-alert me-auto">New arrival</span>

                                    <a href="#" class="bi-heart-fill product-icon"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product-detail.html" class="product-title-link">Denim</a>
                                        </h5>

                                        <p class="product-p">Original brand</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto mt-auto mb-5">₹25</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="product-detail.html">
                                    <img src="images/pro images/wool/w5.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <span class="product-alert">Low Price</span>

                                    <a href="#" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product-detail.html" class="product-title-link">Wool</a>
                                        </h5>

                                        <p class="product-p">Costume fabrics</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto mt-auto mb-5">₹35</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12">
                            <div class="product-thumb">
                                <a href="product-detail.html">
                                    <img src="images/pro images/silk/s2.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="#" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product-detail.html" class="product-title-link">Silk</a>
                                        </h5>

                                        <p class="product-p">branded material</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto mt-auto mb-5">₹45</small>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

        </main>

</asp:Content>

