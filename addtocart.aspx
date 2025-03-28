<%@ Page Title="" Language="C#" MasterPageFile="~/Client/clientMasterPage.master" AutoEventWireup="true" CodeFile="addtocart.aspx.cs" Inherits="Client_addtocart" %>

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
   <div class="col-lg-8 mx-auto col-11">
     <h1 class="hero-title text-center mb-5">Add To Cart</h1>
    <br />
 <div class="col-lg-9 col-14 mx-auto">
    
    <br />
    <div class="form-floating">
    <asp:TextBox ID="txtname" runat="server"  class="form-control" placeholder="username" Width="100%"></asp:TextBox>
    <label for="username" class="w-40">Name</label>
    </div>
    <br />
    <div class="form-floating">
    <asp:TextBox ID="txtprice" runat="server"  class="form-control" placeholder="username" Width="100%"></asp:TextBox>
    <label for="username" class="w-40">Price</label>
    </div>
    <br />
    <div class="form-floating">
    <asp:TextBox ID="txtquantity" runat="server"  class="form-control" placeholder="username"  AutoPostBack="True" Width="100%" ontextchanged="txtquantity_TextChanged"></asp:TextBox>
    <label for="username" class="w-40">Quantity</label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtquantity" ErrorMessage="Please Enter Quantity"></asp:RequiredFieldValidator>
    </div>
    
    <br />
     <div class="form-floating">
          <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("image","~/admin/product/{0}") %>' Height="180px" Width="200px"/>
     </div>
    <br />
    <div class="form-floating">
    <asp:TextBox ID="txtusername" runat="server"  class="form-control" placeholder="username" Width="100%"></asp:TextBox>
    <label for="username" class="w-40">Username</label>
    </div>
    <br />
    <div class="form-floating">
    <asp:TextBox ID="txttotal" runat="server"  class="form-control" 
            placeholder="username" Width="100%" ></asp:TextBox>
    <label for="username" class="w-40">Total</label>
    </div>
    <br />
    <br />
   <asp:Button ID="btnaddtocart" runat="server" Text="Add To Cart" 
        onclick="btnaddtocart_Click" BorderColor="Black" class="btn custom-btn form-control mt-4 mb-3 w-100" />
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
                                <a href="product.aspx">
                                    <img src="images/pro images/Denim/d11.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <span class="product-alert me-auto">New arrival</span>

                                    <a href="#" class="bi-heart-fill product-icon"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product.aspx" class="product-title-link">Denim</a>
                                        </h5>

                                        <p class="product-p">Original brand</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto mt-auto mb-5">₹25</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="product.aspx">
                                    <img src="images/pro images/wool/w5.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <span class="product-alert">Low Price</span>

                                    <a href="#" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product.aspx" class="product-title-link">Wool</a>
                                        </h5>

                                        <p class="product-p">Costume fabrics</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto mt-auto mb-5">₹35</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12">
                            <div class="product-thumb">
                                <a href="product.aspx">
                                    <img src="images/pro images/silk/s2.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="#" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="product.aspx" class="product-title-link">Silk</a>
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

