<%@ Page Title="" Language="C#" MasterPageFile="~/Client/clientMasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Client_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
<center>
<div class="col-lg-8 mx-auto col-11">
     <h1 class="hero-title text-center mb-4">Registration</h1>
   
   
     <div class="form-floating">
    <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="name" Width="100%"></asp:TextBox>
    <label for="name" class="w-40">name</label>
    
    <asp:RequiredFieldValidator ID="reqname" runat="server" 
        ControlToValidate="txtname"  ErrorMessage="Please Enter Name" ForeColor="red"></asp:RequiredFieldValidator><br/>
     </div>
   
   <div class="form-floating">
    <asp:TextBox ID="txtadd" runat="server" class="form-control" placeholder="address"  Width="100%"></asp:TextBox>
     <label for="name" class="w-40">address</label>
     <asp:RequiredFieldValidator ID="reqadd" runat="server" 
        ControlToValidate="txtadd" ErrorMessage="Please Enter Address" ForeColor="red"></asp:RequiredFieldValidator><br/>
     </div>

   <div class="form-floating">
    <asp:TextBox ID="txtcity" runat="server" class="form-control" placeholder="City" Width="100%"></asp:TextBox>
     <label for="name" class="w-40">city</label>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtcity" ErrorMessage="Please Enter City" ForeColor="red"></asp:RequiredFieldValidator><br/>
     </div>

    <div class="form-floating">
    <asp:TextBox ID="txtpin" runat="server" class="form-control" placeholder="pincode" Width="100%"></asp:TextBox>

    <label for="name" class="w-40">pincode</label>
     <asp:RequiredFieldValidator ID="reqpin" runat="server" 
        ControlToValidate="txtpin" ErrorMessage="Please Enter Pincode" ForeColor="red"></asp:RequiredFieldValidator><br/>
     </div>

    <div class="form-floating">
    <asp:TextBox ID="txtstate" runat="server" class="form-control" placeholder="state" Width="100%"></asp:TextBox>
     <label for="name" class="w-40">state</label>
     <asp:RequiredFieldValidator ID="reqstate" runat="server" 
        ControlToValidate="txtstate" ErrorMessage="Please Enter State" ForeColor="red"></asp:RequiredFieldValidator><br/>
     </div>

   <div class="form-floating">
    <asp:TextBox ID="txtusername" runat="server" class="form-control" placeholder="username" Width="100%"></asp:TextBox>
     <label for="name" class="w-40">username</label>
     <asp:RequiredFieldValidator ID="requsername" runat="server" 
        ControlToValidate="txtusername" ErrorMessage="Please Enter Username" ForeColor="red"></asp:RequiredFieldValidator><br/>
    </div>

   <div class="form-floating">
    <asp:TextBox ID="txtpassword" runat="server" class="form-control" pattern="[0-9a-zA-Z]{4,10}" placeholder="password" Width="100%"></asp:TextBox>
     <label for="name" class="w-40">password</label>
     <asp:RequiredFieldValidator ID="reqpassword" runat="server" 
        ControlToValidate="txtpassword" ErrorMessage="Please Enter Password" ForeColor="red"></asp:RequiredFieldValidator><br/>
     </div>

    <div class="form-floating">
    <asp:TextBox ID="txtgender" runat="server" class="form-control" placeholder="gender" Width="100%"></asp:TextBox>
    <label for="name" class="w-40">gender</label>
     <asp:RequiredFieldValidator ID="reqgender" runat="server" 
        ControlToValidate="txtgender" ErrorMessage="Please Enter Gender" ForeColor="red"></asp:RequiredFieldValidator><br/>
     </div>

   <div class="form-floating">
    <asp:TextBox ID="txtmobile" runat="server" class="form-control" placeholder="mobile no." Width="100%"></asp:TextBox>
     <label for="name" class="w-40">mobile no.</label>
     <asp:RequiredFieldValidator ID="reqmobile" runat="server" 
        ControlToValidate="txtmobile" ErrorMessage="Please Enter Mobile" ForeColor="red"></asp:RequiredFieldValidator><br/>
   </div>

  <div class="form-floating">
    <asp:TextBox ID="txtemail" runat="server" class="form-control" pattern="[^ @]*@[^ @]*" placeholder="email address" Width="100%"></asp:TextBox>
     <label for="name" class="w-40">email address</label>
     <asp:RequiredFieldValidator ID="reqemail" runat="server" 
        ControlToValidate="txtemail" ErrorMessage="Please Enter Email" ForeColor="red"></asp:RequiredFieldValidator><br/>
    </div>

   <div class="form-floating"> 
    <asp:TextBox ID="txtdob" runat="server" class="form-control" placeholder="DOB" Width="100%"></asp:TextBox>
     <label for="name" class="w-40">DOB</label>
     <asp:RequiredFieldValidator ID="reqdob" runat="server" 
        ControlToValidate="txtdob" ErrorMessage="Please Enter DOB" ForeColor="red"></asp:RequiredFieldValidator><br/>
   </div>
   
    <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
        Text="Submit" class="btn custom-btn form-control mt-4 mb-3 w-100" />
        
       </div>
       </div>
       </div>
       </center>
</asp:Content>

