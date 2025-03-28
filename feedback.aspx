<%@ Page Title="" Language="C#" MasterPageFile="~/Client/clientMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="Client_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
<br /><br />
<center>
<div class="col-lg-8 mx-auto col-11">
     <h1 class="hero-title text-center mb-5">Feedback</h1>
    
 <div class="col-lg-9 col-14 mx-auto">
    <div class="div-separator my-2">
    
   
   <div class="form-floating">
    <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="username" Width="100%"></asp:TextBox>
    <label for="username" class="w-40">username</label>
    <asp:RequiredFieldValidator ID="reqname" runat="server" 
        ControlToValidate="txtname" ErrorMessage="Please Enter Name" ForeColor="red"></asp:RequiredFieldValidator>
        </div>
   

    <div class="form-floating">
    <asp:TextBox ID="txtmob" runat="server" class="form-control" placeholder="mobile no." Width="100%"></asp:TextBox>
    <label for="mobile no." class="w-40">mobile no.</label>
    <asp:RequiredFieldValidator ID="reqmob" runat="server" 
        ControlToValidate="txtmob" ErrorMessage="Please Enter 10 Digit Number" ForeColor="red"></asp:RequiredFieldValidator>
        </div>
   
   <div class="form-floating">
    <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="email" Width="100%"></asp:TextBox>
    <label for="email" class="w-40">email</label>
    <asp:RequiredFieldValidator ID="reqemail" runat="server" 
        ErrorMessage="Please Enter Email" ControlToValidate="txtemail" ForeColor="red"></asp:RequiredFieldValidator>
        </div>
    

   <div class="form-floating">
    <asp:TextBox ID="txtfeed" runat="server" class="form-control" placeholder="feedback" Width="100%"></asp:TextBox>
    <label for="feedback" class="w-40">feedback</label>
    <asp:RequiredFieldValidator ID="reqfeedback" runat="server" 
        ControlToValidate="txtfeed" ErrorMessage="Please Enter Feedback" ForeColor="red"></asp:RequiredFieldValidator>
        </div>
    

   
    <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
        Text="Send"  class="btn custom-btn form-control mt-4 mb-3 w-100"/>
        </div>
        </div>
        </div>
</center>
</asp:Content>

