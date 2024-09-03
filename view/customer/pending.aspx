<%@ Page Title="" Language="C#" MasterPageFile="~/view/customer/customermaster.Master" AutoEventWireup="true" CodeBehind="pending.aspx.cs" Inherits="online_car_rental.view.customer.pending" enableEventValidation="false" %>
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
                <div class="row">
                    <div class="col-md-8">
                        <h1>Your pending cars</h1>
                    </div>
                    
                
                </div>
                <asp:GridView runat="server" ID="carlist" Class="table table-hover">
                    <AlternatingRowStyle BackColor="#ff6600" ForeColor="black"/>

                </asp:GridView>
            </div>
                </form>
            <label id="approvedisapprove" runat="server" class="text-danger"></label>
        </div>
    </div>
</asp:Content>
