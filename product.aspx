<%@ Page Title="" Language="C#" MasterPageFile="~/Client/clientMasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="Client_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="preloader">
            <div class="spinner">
                <span class="sk-inner-circle"></span>
            </div>
        </section>
    
        <main>

            

            <header class="site-header section-padding d-flex justify-content-center align-items-center">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-10 col-12">
                            <h1>
                                <span class="d-block text-primary">Choose your</span>
                                <span class="d-block text-dark">favorite fabric</span>
                            </h1>
                        </div>
                    </div>
                </div>
            </header>

            <section class="products section-padding">
                <div class="container">
                    <div class="row">
                        
                        <div class="col-12">
                            <h2 class="mb-5">New Arrivals</h2>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=chiffon">
                                    <img src="Fabric/Chiffon.jpg" class="img-fluid product-image" alt="">
                                    <div class="product-overlay">
                                <a class="btn btn-lg-square btn-outline-light rounded-circle" href="viewproduct.aspx?item=plain"><i class="fa fa-eye text-primary"></i></a>
                            </div>
                                </a>

                                <div class="product-top d-flex">
                                    <span class="product-alert me-auto">New Arrival</span>

                                    <a href="#" class="bi-heart-fill product-icon"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=chiffon" class="product-title-link">Chiffon</a>
                                        </h5>

                                        <p class="product-p">Original package design from house</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹25 Per Meter</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=cotton">
                                    <img src="Fabric/Cotton.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <span class="product-alert">Discounted Price</span>

                                    <a href="#" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=cotton" class="product-title-link">Cotton</a>
                                        </h5>

                                        <p class="product-p">Costume package</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹35 Per Meter</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=silk">
                                    <img src="Fabric/Silk.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="#" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=silk" class="product-title-link">Silk</a>
                                        </h5>

                                        <p class="product-p">Nature made another world</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹45 Per Meter</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=linen">
                                    <img src="Fabric/Linen.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="viewproduct.aspx?item=linen" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=linen" class="product-title-link">Linen</a>
                                        </h5>

                                        <p class="product-p">Original design from house</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹80 Per Meter</small>
                                </div>
                            </div>
                            </div>
                           <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=polyster">
                                    <img src="Fabric/Polyster.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="viewproduct.aspx?item=polyster" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=polyster" class="product-title-link">Polyster</a>
                                        </h5>

                                        <p class="product-p">Original design from house</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹85 Per Meter</small>
                                </div>
                               </div>
                              </div>

                                <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=reyon">
                                    <img src="Fabric/Rayon.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="viewproduct.aspx?item=rayon" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=rayon" class="product-title-link">Rayon</a>
                                        </h5>

                                        <p class="product-p">Original design from house</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹8150 Per Meter</small>
                                </div>
                                </div>
                                </div>

                        <div class="col-12">
                            <h2 class="mb-5">Popular</h2>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=denim">
                                    <img src="Fabric/Denim.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <span class="product-alert">Trending</span>

                                    <a href="viewproduct.aspx?item=denim" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=denim" class="product-title-link">Denim</a>
                                        </h5>

                                        <p class="product-p">Original package design from house</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹50 Per Meter</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=wool">
                                    <img src="Fabric/Wool.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="viewproduct.aspx?item=wool" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=wool" class="product-title-link">Wool</a>
                                        </h5>

                                        <p class="product-p">Package design</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹100 Per Meter</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=muslin">
                                    <img src="Fabric/Muslin.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="viewproduct.aspx?item=muslin" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=muslin" class="product-title-link">Muslin</a>
                                        </h5>

                                        <p class="product-p">Original design from house</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹200 Per Meter</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=poplin">
                                    <img src="Fabric/Poplin.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="viewproduct.aspx?item=poplin" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=poplin" class="product-title-link">Poplin</a>
                                        </h5>

                                        <p class="product-p">Package design</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹160 Per Meter</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=bemburg">
                                    <img src="Fabric/Bemburg.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="viewproduct.aspx?item=wool" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=Bemburg" class="product-title-link">Bemburg</a>
                                        </h5>

                                        <p class="product-p">Package design</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹90 Per Meter</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mb-3">
                            <div class="product-thumb">
                                <a href="viewproduct.aspx?item=hemp">
                                    <img src="Fabric/Hemp.jpg" class="img-fluid product-image" alt="">
                                </a>

                                <div class="product-top d-flex">
                                    <a href="viewproduct.aspx?item=hemp" class="bi-heart-fill product-icon ms-auto"></a>
                                </div>

                                <div class="product-info d-flex">
                                    <div>
                                        <h5 class="product-title mb-0">
                                            <a href="viewproduct.aspx?item=hemp" class="product-title-link">Hemp</a>
                                        </h5>

                                        <p class="product-p">Package design</p>
                                    </div>

                                    <small class="product-price text-muted ms-auto">₹60 Per Meter</small>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                
            </section>

        </main>


        
</asp:Content>

