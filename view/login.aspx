<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="online_car_rental.view.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../assets/libraries/css/bootstrap.min.css" />
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="row mt-5">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-warning">welcome to AKERAY login page!</h3>
                        <img src="../../assets/img/Rent-A-Car.png" style="max-height:150px;max-width:300px;" />
                    </div>
                    <div class="col"></div>
                </div>
                <form runat="server">
                <div class="form-group" runat="server">
                    <label for="exampleInputEmail1">user name:</label>
                    <input type="text" class="form-control" id="usertb" aria-describedby="emailHelp" placeholder="enter user name" runat="server" required="required"/>
                    
                       </div>
                 <div class="form-group" runat="server">
                    <label for="exampleInputPassword1">password:</label>
                    <input type="password" class="form-control" id="passtb" placeholder="enter password" runat="server" required="required"/>
                       </div>
                    <label id="errormsg" runat="server" class="text-danger"></label>
                <br />
                <div class="form-group d-grid">
                    
                    <asp:Button id="loginbtn" type="submit" class="btn btn-warning btn-outline-light" Text="Login" runat="server" OnClick="loginbtn_Click"/>
                </div>
                    <div class="form-group" runat="server">
                    <p>Don't have an account? <a href="customer/Registors.aspx">register</a></p>
                       </div>
                </form>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</body>
</html>
