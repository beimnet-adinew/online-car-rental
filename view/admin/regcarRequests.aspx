<%@ Page Title="" Language="C#" MasterPageFile="~/view/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="regcarRequests.aspx.cs" Inherits="online_car_rental.view.admin.regcarRequests" enableEventValidation="false" %>
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
        <form id="form1" runat="server">


            <div class="row">
     <div class="col-md-4">
                <div class="row">
                    <div class="col-md-8">
                        <h4 class="text-danger">car registration requests</h4>
                    </div>
                </div>

                <asp:GridView runat="server" ID="carreqlist" Class="table table-hover" AutoGenerateSelectButton="true" OnSelectedIndexChanged="carreqlist_SelectedIndexChanged" >
                    <AlternatingRowStyle BackColor="#ff6600" ForeColor="black"/>

                </asp:GridView>
            </div>
        </div>




            <div class="col-md-4">
                    <div id="invreq" runat="server" >
                        <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">plate number:</label>
                       <input type="text" class="form-control border-0" id="platereq" placeholder="" runat="server">
                       </div>
                     <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">brand:</label>
                       <input type="text" class="form-control border-0" id="brandreq" placeholder="" runat="server">
                       </div>
                     <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">model:</label>
                       <input type="text" class="form-control border-0" id="modreq" placeholder="" runat="server">
                       </div>
                     <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">price:</label>
                       <input type="text" class="form-control border-0" id="prireq" placeholder="" runat="server">
                       </div>
                     <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Color:</label>
                       <input type="text" class="form-control border-0" id="colreq" placeholder="" runat="server">
                       </div>
                     <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">availablity:</label>
                       <input type="text" class="form-control border-0" id="availreq" placeholder="" runat="server">
                       </div>
                        <label id="errormsg" runat="server" class="text-danger"></label>
                    <asp:Button id="acceptbtn" type="submit" class="btn btn-danger" Text="Accept" runat="server" OnClick="acceptbtn_Click"   /> 
                        <asp:Button id="rejectbtn" type="submit" class="btn btn-danger" Text="Reject" runat="server" OnClick="rejectbtn_Click" /> 

                    </div>
                     
                </div>
        </form>
    </div>
        </div>
</asp:Content>
