<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="registrationmaster.aspx.cs" Inherits="Client_registrationmaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <br />
    <br />
    <br />
<center>
    <asp:Label ID="lblregform" runat="server" Font-Bold="True" 
        Font-Names="Algerian" Font-Size="X-Large" ForeColor="#003366" 
        Text="Registration Form"></asp:Label>
    <br />
    <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqname" runat="server" 
        ControlToValidate="txtname" ErrorMessage="please enter name"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqadd" runat="server" 
        ControlToValidate="txtaddress" ErrorMessage="please enter address"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqcity" runat="server" 
        ControlToValidate="txtcity" ErrorMessage="please enter city"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblpincode" runat="server" Text="Pincode"></asp:Label>
    <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqpin" runat="server" 
        ControlToValidate="txtpin" ErrorMessage="please enter pincode"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblstate" runat="server" Text="State"></asp:Label>
    <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqstate" runat="server" 
        ControlToValidate="txtstate" ErrorMessage="please enter state"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lbluname" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="requname" runat="server" 
        ControlToValidate="txtuname" ErrorMessage="please enter username"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblpass" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqpass" runat="server" 
        ControlToValidate="txtpass" ErrorMessage="please enter password"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
    <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqgen" runat="server" 
        ControlToValidate="txtgender" ErrorMessage="please enter Gender"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblmob" runat="server" Text="Mobile"></asp:Label>
    <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqmob" runat="server" 
        ControlToValidate="txtmob" ErrorMessage="please enter mobile"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqemail" runat="server" 
        ErrorMessage="please enter email" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lbldob" runat="server" Text="DOB"></asp:Label>
    <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqdob" runat="server" 
        ErrorMessage="please enter DOB" ControlToValidate="txtdob"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="btnsubmit" runat="server" Font-Bold="True" Font-Size="Large" 
        Text="Submit" onclick="btnsubmit_Click" />
    <br />

    </center>
</asp:Content>

