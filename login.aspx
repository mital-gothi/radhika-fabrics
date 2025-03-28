<%@ Page Title="" Language="C#" MasterPageFile="~/Client/clientMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Client_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br />
    <body background: "url('b3.jpg')"></body>
<center>
 <div class="col-lg-8 mx-auto col-11">
     <h1 class="hero-title text-center mb-5">Login</h1>
    <br/>
   
   <div class="form-floating">
    <asp:TextBox ID="txtuname" runat="server"  class="form-control" placeholder="username" Width="100%"></asp:TextBox>
    <label for="username" class="w-40">username</label>
    <br />
   
     </div>
    <div class="form-floating">
    <asp:TextBox ID="txtpass" runat="server"  class="form-control bi-unlock-fill" placeholder="password" Width="100%"></asp:TextBox>
    <label for="password" class="w-40">password</label>
    <br />
     </div><br />



    <asp:Button ID="btnlogin" runat="server" Text="Login" 
        onclick="btnsubmit_Click" BorderColor="Black" class="btn custom-btn form-control mt-4 mb-3 w-100" />
    <br />
    <br />
    <p class="text-center">Don’t have an account? 
    <asp:Button ID="btnsignin" runat="server" BorderStyle="None" BorderColor="White"
        onclick="btnsignin_Click" Text="Create Account" BackColor="white" /></p>
<br /><br />

</div>
</div>
</div>

    </center>
</asp:Content>

