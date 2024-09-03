<%@ Page Title="" Language="C#" MasterPageFile="~/view/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="admincars.aspx.cs" Inherits="online_car_rental.view.admin.admincars" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
           <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger">manage customers</h3>
                        <img src="../../assets/img/customers.jpg" style="max-height:120px;max-width:300px;" /></div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
 <form id="form1" runat="server">
     <div id="inv" runat="server" >
  <div class="mb-3">
    <label for="platetb" class="form-label">plate number:</label>
    <input type="text" class="form-control border-0" id="platetb" placeholder="" runat="server" >
  </div>

   <div class="mb-3">
    <label for="brandtb" class="form-label">brand:</label>
    <input type="text" class="form-control border-0" id="brandtb" placeholder="" runat="server" >
  </div>
   <div class="mb-3">
    <label for="modtb" class="form-label">model:</label>
    <input type="text" class="form-control border-0" id="modtb" placeholder="" runat="server" >
  </div>
<div class="mb-3">
    <label for="pricetb" class="form-label">price:</label>
    <input type="text" class="form-control border-0" id="pricetb" placeholder="" runat="server">
  </div>
         <div class="mb-3">
    <label for="colortb" class="form-label">color:</label>
    <input type="text" class="form-control border-0" id="colortb" placeholder="" runat="server">
  </div>
         <div class="mb-3">
    <label for="avtb" class="form-label">availablity:</label>
    <input type="text" class="form-control border-0" id="avtb" placeholder="" runat="server">
  </div>
          <label id="errormsg" runat="server" class="text-danger"></label>
  <asp:Button id="Button1" type="submit" class="btn btn-danger" Text="Edit" runat="server"  />
     <asp:Button id="Button2" type="submit" class="btn btn-danger" Text="Add" runat="server"  />
     <asp:Button id="Button3" type="submit" class="btn btn-danger" Text="Delete" runat="server"  />
         </div>
   
</form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <h1>available car's</h1>
                <asp:GridView runat="server" ID="Carlist" Class="table table-hover" AutoGenerateSelectButton="true" OnSelectedIndexChanged="Carlist_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#ff6600" ForeColor="black"/>

                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
