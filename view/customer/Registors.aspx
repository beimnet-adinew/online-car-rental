<%@ Page Title="" Language="C#" MasterPageFile="~/view/customer/customermaster.Master" AutoEventWireup="true" CodeBehind="Registors.aspx.cs" Inherits="online_car_rental.view.customer.Registors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <form runat="server">
    <div class="row container-fluid">
     <div class="col-md-4">

         <div class="col-12">
    <label for="fname" class="form-label">First Name:</label>
    <input type="text" class="form-control" id="fname" placeholder="enter your first name" runat="server"/>
  </div>
  <div class="col-12">
    <label for="lname" class="form-label">Last Name:</label>
    <input type="text" class="form-control" id="lname" placeholder="enter your last name" runat="server"/>
  </div>
  <div class="col-12">
    <label for="mail" class="form-label">Email:</label>
    <input type="email" class="form-control" id="mail" placeholder="enter your email address" runat="server"/>
  </div>
  <div class="col-12">
    <label for="phone" class="form-label">Phone Number:</label>
    <input type="text" class="form-control" id="phone" placeholder="enter your phone number" runat="server"/>
  </div>
   <div class="col-12">
      <label for="subcit" class="form-label">availablity:</label>
       <asp:DropDownList ID="subcit" runat="server"  class="form-control">
        <asp:ListItem>Bole</asp:ListItem>
        <asp:ListItem>Nifas Silk Lafto</asp:ListItem>
           <asp:ListItem>Arada</asp:ListItem>
           <asp:ListItem>Yeka</asp:ListItem>
           <asp:ListItem>Akaki Kality</asp:ListItem>
           <asp:ListItem>Adiss Ketema</asp:ListItem>
           <asp:ListItem>Kirkos</asp:ListItem>
           <asp:ListItem>Gullele</asp:ListItem>
           <asp:ListItem>Lideta</asp:ListItem>
           <asp:ListItem>Kolfe Keranyo</asp:ListItem>
           <asp:ListItem>Lemi Kura</asp:ListItem>
    </asp:DropDownList>
  </div>
<div class="col-12">
    <label for="inputZip" class="form-label">Street:</label>
    <input type="text" class="form-control" id="street" placeholder="enter your specific street" runat="server"/>
  </div>
  
        <label id="errormsg" runat="server" class="text-danger"></label>
  <div class="col-12">
     <asp:Button id="Regbtn" type="submit" class="btn btn- btn-outline-warning" Text="Register" runat="server" OnClick="Regbtn_Click" />
  </div>


         </div>
         <div class="col-md-4">
         <div class="align-items-center">
         <img src="../../assets/img/1.png" style="max-height:450px;max-width:500px;margin-left:100px;margin-top:100px;" />
             </div>
     </div>
        </div>
        </form>
</asp:Content>
