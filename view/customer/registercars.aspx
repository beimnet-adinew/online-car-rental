<%@ Page Title="" Language="C#" MasterPageFile="~/view/customer/customermaster.Master" AutoEventWireup="true" CodeBehind="registercars.aspx.cs" Inherits="online_car_rental.view.customer.registercars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <form runat="server">
<div class="p-3">
 <div class="row container-fluid">
     <div class="col-md-4">
  <div class="mb-3">
      <label for="pnum" class="form-label">plate number:</label>
    <input type="text" id="pnum" class="form-control" placeholder="enter plate number" runat="server"/>
  </div>
  <div class="mb-3">
      <label for="brand" class="form-label">brand:</label>
    <input type="text" id="brand" class="form-control" placeholder="enter car brand" runat="server"/>
  </div>
     <div class="mb-2">
      <label for="model" class="form-label">model:</label>
    <input type="text" id="model" class="form-control" placeholder="enter car model" runat="server"/>
  </div>
     <div class="mb-3">
      <label for="price" class="form-label">price:</label>
    <input type="text" id="price" class="form-control" placeholder="enter the perday price" runat="server"/>
  </div>
     <div class="mmb-3">
      <label for="color" class="form-label">color:</label>
    <input type="text" id="color" class="form-control" placeholder="the color of the car" runat="server"/>
  </div>
     <div class="mb-3">
    <label for="availablitycb" class="form-label">availablity:</label>
    <asp:DropDownList ID="availablitycb" runat="server"  class="form-control">
        <asp:ListItem>available</asp:ListItem>
        <asp:ListItem>booked</asp:ListItem>
    </asp:DropDownList>
         </div>
  </div>

     <div class="col-md-4">
         <div class="align-items-center">
         <img src="../../assets/img/1.png" style="max-height:450px;max-width:500px;margin-left:100px;margin-top:100px;" />
             </div>
     </div>

</div>
        <br />
 <div class="row">
     
     
     <div class="col">
   <div class="d-grid gap-2">
  <label id="errormsg" runat="server" class="text-danger"></label>
       <asp:Button id="Regbtn" type="submit" class="btn btn- btn-outline-warning" Text="Register Car" runat="server" OnClick="Regbtn_Click"/>
</div>
     </div>
        </div>
            </div>
        </form>
</asp:Content>
