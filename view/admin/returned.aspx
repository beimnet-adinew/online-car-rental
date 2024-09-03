<%@ Page Title="" Language="C#" MasterPageFile="~/view/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="returned.aspx.cs" Inherits="online_car_rental.view.admin.returned" enableEventValidation="false"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col"></div>
            
            <div class="col"></div>
        </div>
        <div class="row">
            <form runat="server">
            <div class="col-md-8">
                <div class="row"></div>
                 <div class="row">
                    <img src="../../assets/img/5.jpg" style="max-height:120px;max-width:200px;" />
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <h1>returned cars</h1>
                    </div>
                   
                
                </div>
                <asp:GridView runat="server" ID="returnlist" Class="table table-hover" AutoGenerateSelectButton="true" OnSelectedIndexChanged="returnlist_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#ff6600" ForeColor="black"/>

                </asp:GridView>
            </div>
                <div id="hidet" class="mb-3" runat="server">
               <label for="exampleInputEmail1" class="form-label">return ID:</label>
               <input type="text" class="form-control border-0" id="retid" placeholder="" runat="server" >
             </div>
                <label id="errormsg" runat="server" class="text-danger"></label>
                <asp:Button id="removebtn" type="submit" class="btn btn-danger" Text="Remove" runat="server" OnClick="removebtn_Click"/>
                </form>
        </div>
    </div>
</asp:Content>
