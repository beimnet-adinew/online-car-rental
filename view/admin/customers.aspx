<%@ Page Title="" Language="C#" MasterPageFile="~/view/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="customers.aspx.cs" Inherits="online_car_rental.view.admin.customers" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
        <div class="container-fluid">
            <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger">manage customers</h3>
                        <img src="../../assets/img/customers.jpg" style="max-height:120px;max-width:300px;" /></div>
                    <div class="col"></div>
                </div>
        <div class="row">

             <div class="col-md-8">
                <h1>customer's list</h1>
                <asp:GridView runat="server" ID="customerlist" Class="table table-hover" AutoGenerateSelectButton="true" OnSelectedIndexChanged="customerlist_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#ff6600" ForeColor="black"/>

                </asp:GridView>
            </div>
            </div>

            <div class="col-md-4">
                
                <div class="row">
                    <div class="col">
 <form id="form1" runat="server">
     <div id="inv" runat="server" >
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">First name:</label>
    <input type="text" class="form-control border-0" id="first" placeholder="" runat="server" >
  </div>

   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Last name:</label>
    <input type="text" class="form-control border-0" id="last" placeholder="" runat="server" >
  </div>
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">email:</label>
    <input type="text" class="form-control border-0" id="mail" placeholder="" runat="server" >
  </div>
<div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">phone:</label>
    <input type="text" class="form-control border-0" id="phone" placeholder="" runat="server">
  </div>
         <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">subcity:</label>
    <input type="text" class="form-control border-0" id="subcit" placeholder="" runat="server">
  </div>
         <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">street:</label>
    <input type="text" class="form-control border-0" id="street" placeholder="" runat="server">
  </div>
          <label id="errormsg" runat="server" class="text-danger"></label>
  <asp:Button id="Button1" type="submit" class="btn btn-danger" Text="Edit" runat="server" OnClick="editbtn_Click" />
     <asp:Button id="Button2" type="submit" class="btn btn-danger" Text="Add" runat="server" OnClick="savebtn_Click" />
     <asp:Button id="Button3" type="submit" class="btn btn-danger" Text="Delete" runat="server" OnClick="deletebtn_Click" />
         </div>
 

     
  
    
</form>
                    </div>
                </div>
            </div>
           
        
    </div>
</asp:Content>
