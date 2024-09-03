<%@ Page Title="" Language="C#" MasterPageFile="~/view/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="cars.aspx.cs" Inherits="online_car_rental.view.admin.cars" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger">manage cars</h3>
                        <img src="../../assets/img/61710-cars-lamborghini-orange-cars.jpg" style="max-height:150px;max-width:300px;" /></div>
                    <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
 <form runat="server">
 <%-- <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Licence number:</label>
   
      <asp:TextBox id="lnumtb"  runat="server" class="form-control" placeholder="enter the licence number" ReadOnly="false" required=""></asp:TextBox>
  </div>

   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">brand:</label>
   
       <asp:TextBox id="brandtb"  runat="server" class="form-control" placeholder="enter the licence number" ReadOnly="false" required=""></asp:TextBox>
  </div>
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">model:</label>
   
       <asp:TextBox id="modtb"  runat="server" class="form-control" placeholder="enter the licence number" ReadOnly="false" required=""></asp:TextBox>
  </div>
<div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">price:</label>
  
    <asp:TextBox id="pricetb"  runat="server" class="form-control" placeholder="enter the licence number" ReadOnly="false" required=""></asp:TextBox>
  </div>
 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">color:</label>
  
     <asp:TextBox id="colortb"  runat="server" class="form-control" placeholder="enter the licence number" ReadOnly="false" required=""></asp:TextBox>
  </div>
<div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">availablity:</label>
    <asp:DropDownList ID="availablitycb" runat="server"  class="form-control">
        <asp:ListItem>available</asp:ListItem>
        <asp:ListItem>booked</asp:ListItem>
    </asp:DropDownList>
  </div>
     <br />
     <label id="errormsg" runat="server" class="text-danger"></label>
     <br />
  <asp:Button id="editbtn" type="submit" class="btn btn-danger" Text="Edit" runat="server" OnClick="editbtn_Click" />
     <asp:Button id="savebtn" type="submit" class="btn btn-danger" Text="Save" runat="server" OnClick="savebtn_Click" />
     <asp:Button id="deletebtn" type="submit" class="btn btn-danger" Text="Delete" runat="server" OnClick="deletebtn_Click" />--%>
  
</form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
               <h1>car list</h1>
                <asp:GridView runat="server" ID="carlist" Class="table table-hover" AutoGenerateSelectButton="true" OnSelectedIndexChanged="carlist_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#ff6600" ForeColor="black"/>

                </asp:GridView>
            </div>
        </div>
    </div>


</asp:Content>
