<%@ Page Title="" Language="C#" MasterPageFile="~/view/customer/customermaster.Master" AutoEventWireup="true" CodeBehind="cars.aspx.cs" Inherits="online_car_rental.view.customer.cars" enableEventValidation="false" %>
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
    <label for="exampleInputEmail1" class="form-label">From:</label>
    <input type="date" class="form-control border-0" id="from" placeholder="" runat="server">
  </div>
               <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">To:</label>
    <input type="date" class="form-control border-0" id="to" placeholder="" runat="server">
  </div>
          <label id="errormsg" runat="server" class="text-danger"></label>
         <div class="d-grid gap-2 col-6 mx-auto">
  <asp:Button id="Rentbtn" type="submit" class="btn btn- btn-warning" Text="Book" runat="server" OnClick="Rentbtn_Click1"/>
             </div>
         </div>
 

     
  
    
</form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-4">
                        <h1>Available cars</h1>
                    </div>
                  <div class="col-md-4" style="margin-left:280px;">
                      <label id="custname" runat="server">xxxx</label>
                  </div>  
                
                </div>
                <asp:GridView runat="server" ID="carlist" Class="table table-hover" AutoGenerateSelectButton="true" OnSelectedIndexChanged="carlist_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#ff6600" ForeColor="black"/>

                </asp:GridView>
            </div>
        </div>
    </div>
               
               
         
</asp:Content>
