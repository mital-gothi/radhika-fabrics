﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Client/clientMasterPage.master" AutoEventWireup="true" CodeFile="viewcart.aspx.cs" Inherits="Client_viewcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
<center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource2" Font-Size="Larger" Height="100px" Width="471px" 
         AutoGenerateDeleteButton="True" OnRowDeleting="GridView1_RowDeleting" 
        >
        <Columns>
        <asp:TemplateField HeaderText="ID" Visible="false">
            <ItemTemplate>
                <asp:Label ID="lblid" runat="server" Text='<%#Eval("id") %>'></asp:Label>
            </ItemTemplate>
            
            <HeaderStyle></HeaderStyle>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
            </ItemTemplate>

            <HeaderStyle></HeaderStyle>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Price">
            <ItemTemplate>
                <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
            </ItemTemplate>

            <HeaderStyle></HeaderStyle>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:image ID="lblimage" runat="server" ImageUrl='<%#Eval("image") %>' Height="50px" Width="50px" ></asp:image> 
            </ItemTemplate>

            <HeaderStyle></HeaderStyle>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:Label ID="lblquantity" runat="server" Text='<%#Eval("quantity") %>'></asp:Label>
            </ItemTemplate>

            <HeaderStyle ></HeaderStyle>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Total">
            <ItemTemplate>
                <asp:Label ID="lbltotal" runat="server" Text='<%#Eval("total") %>'></asp:Label>
            </ItemTemplate>

            <HeaderStyle ></HeaderStyle>
        </asp:TemplateField>
    </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [addtocart]" 
        ></asp:SqlDataSource>
   
    <br />
    <asp:TextBox ID="txttotal" runat="server" ></asp:TextBox>
    <asp:Button ID="btnpurchase" runat="server" Text="Purchase" 
        onclick="btnpurchase_Click" />
        </center>
        <br />
</asp:Content>

