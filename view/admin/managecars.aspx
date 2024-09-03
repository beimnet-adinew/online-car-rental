<%@ Page Title="" Language="C#" MasterPageFile="~/view/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="managecars.aspx.cs" Inherits="online_car_rental.view.admin.managecars" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger">AKERAY</h3>
                        <img src="../../assets/img/8.jpg" alt="not found" style="max-height:220px;max-width:200px;" /></div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
 <form id="form1" runat="server">
     <div id="inv" runat="server" >
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">plate number:</label>
    <input type="text" class="form-control border-0" id="plate" placeholder="" runat="server" >
  </div>

   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">brand:</label>
    <input type="text" class="form-control border-0" id="brand" placeholder="" runat="server" >
  </div>
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">model:</label>
    <input type="text" class="form-control border-0" id="model" placeholder="" runat="server" >
  </div>
<div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">price:</label>
    <input type="text" class="form-control border-0" id="price" placeholder="" runat="server">
  </div>
         <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">color:</label>
    <input type="text" class="form-control border-0" id="color" placeholder="" runat="server">
  </div>
           <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Availablity:</label>
    <input type="text" class="form-control border-0" id="availablitycb" placeholder="" runat="server">
  </div>
          <label id="errormsg" runat="server" class="text-danger"></label>
         
  <asp:Button id="editbtn" type="submit" class="btn btn- btn-warning" Text="Edit" runat="server" OnClick="editbtn_Click"/>
         <asp:Button id="deletebtn" type="submit" class="btn btn-warning" Text="Delete" runat="server" OnClick="deletebtn_Click"/>
     <asp:Button id="addbtn" type="submit" class="btn btn-warning" Text="ADD" runat="server" OnClick="addbtn_Click"/>
             
         </div>
 

     
  
    
</form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <h1>Manage cars</h1>
                <asp:GridView runat="server" ID="carlist" Class="table table-hover" AutoGenerateSelectButton="true" OnSelectedIndexChanged="carlist_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#ff6600" ForeColor="black"/>

                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
