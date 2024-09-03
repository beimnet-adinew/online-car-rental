<%@ Page Title="" Language="C#" MasterPageFile="~/view/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="requests.aspx.cs" Inherits="online_car_rental.view.admin.requests" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
         <div class="container-fluid">
             <div class="row">
                 <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger">manage requests</h3>
                        <img src="../../assets/img/customers.jpg" style="max-height:120px;max-width:300px;" /></div>
                    <div class="col"></div>
             </div>
             <div class="row">
                   <div class="col-md-8">
                <div class="row">
                    <div class="col-md-4">
                        <h3 class="text-danger">rent requests</h3>
                    </div>
                  <div class="col-md-4" style="margin-left:280px;">
                      <label id="custname" runat="server">xxxx</label>
                  </div>  
                
                </div>
                       <div class="col-md-12">
                <asp:GridView runat="server" ID="requestlist" Class="table table-hover" AutoGenerateSelectButton="true" OnSelectedIndexChanged="requestlist_SelectedIndexChanged" >
                    <AlternatingRowStyle BackColor="#ff6600" ForeColor="black"/>

                </asp:GridView>
                           </div>
            </div>
              
             </div>
        <div class="row">
            <form id="form1" runat="server">
                <div class="row">
                <div class="col-md-8">
                         <div id="inv" runat="server" >
                       <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Car id:</label>
                       <input type="text" class="form-control border-0" id="carid" placeholder="" runat="server">
                       </div>

                        <div class="mb-3">
                         <label for="exampleInputEmail1" class="form-label">Customer id:</label>
                          <input type="text" class="form-control border-0" id="customid" placeholder="" runat="server">
                        </div>
                 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">rent date:</label>
    <input type="text" class="form-control border-0" id="rentd" placeholder="" runat="server" >
  </div>
<div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">return date:</label>
    <input type="text" class="form-control border-0" id="retd" placeholder="" runat="server">
  </div>
         <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">fee:</label>
    <input type="text" class="form-control border-0" id="feeb" placeholder="" runat="server">
  </div>
          <label id="errormsg" runat="server" class="text-danger"></label>
  <asp:Button id="approvebtn" type="submit" class="btn btn-danger" Text="Approve" runat="server" OnClick="approvebtn_Click" />
   <asp:Button id="disappbtn" type="submit" class="btn btn-danger" Text="DisApprove" runat="server" OnClick="disappbtn_Click" />  
         </div>
                </div>
               
                    </div>
                </form>
 
        </div>
    </div>
</asp:Content>
