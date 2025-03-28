<%@ Page Title="" Language="C#" MasterPageFile="~/Client/clientMasterPage.master" AutoEventWireup="true" CodeFile="viewproduct.aspx.cs" Inherits="Client_viewproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br />
 <div class="container-xxl bg-light my-6 py-6 pt-0">
        <div class="container">
            
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
               
                 <h1 class="hero-title text-center mb-4"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
            </div>
            <div class="row g-4">
                <asp:Repeater ID="Repeater1" runat="server">
           <ItemTemplate>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="product-item d-flex flex-column bg-white rounded overflow-hidden h-100">
                        
                        <div class="position-relative mt-auto align-items-sm-center">
                        
                           <asp:image ID="lblimage" class="img-fluid product-image" runat="server" ImageUrl='<%#Eval("image","~/Admin/product/{0}") %>'> </asp:image> 
                        </div>
                     <div class="text d-md-table-row p-4">
                            
                              <h3 class="mb-8"> 
                                  <asp:Label ID="Label3" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                             </h3>
                            
                       
                        <div class="product-price text-muted ms-auto">₹<asp:Label ID="Label5" runat="server" Text='<%#Eval("price") %>'></asp:Label></div>
                     </div>
                                    <div class="product-overlay bi-bag-fill">
                                   
                                        <a  href="addtocart.aspx?id=<%#Eval("id") %>">Add To Cart
                                        </a>
                                        
                                    </div>
                    </div>
                       
                    
                </div>

               </ItemTemplate>
                    </asp:Repeater>
            </div>
        </div>
    </div>
    
<br />
<br />

</asp:Content>

