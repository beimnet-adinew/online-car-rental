<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carregisteral.aspx.cs" Inherits="online_car_rental.view.customer.carregisteral" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../assets/css/sidemenu.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="bg-dark col-auto col-md-2 min-vh-100 d-flex flex-column justify-content-between">
            <div class="bg-dark p-2">
                <a class="d-flex text-decoration-none mt-1 align-items-center text-white">
                    <span class="fs-4 d-none d-sm-inline">AKERAY</span>
                </a>
                <ul class="nav nav-pills flex-column mt-4">                  
                    <li class="nav-item"> 
                        <a href="../admin/home1.aspx" class="nav-link text-white">
                            <i class="fs-5 fa fa-house"></i>
                        <span class="fs-4 ms-3 d-none d-sm-inline">home</span>
                        </a>           
                    </li>
                    <li class="nav-item"> 
                        <a href="#" class="nav-link text-white">
                            <i class="fs-5 fa fa-address-card"></i>
                        <span class="fs-4 ms-3 d-none d-sm-inline">sign-up</span>
                        </a>           
                    </li>
                     <li class="nav-item"> 
                        <a href="#" class="nav-link text-white">
                            <i class="fs-5 fa fa-car"></i>
                        <span class="fs-4 ms-3 d-none d-sm-inline">find a car</span>
                        </a>           
                    </li>
                    <li class="nav-item"> 
                        <a href="#" class="nav-link text-white">
                            <i class="fs-5 fa fa-right-from-bracket"></i>
                        <span class="fs-4 ms-3 d-none d-sm-inline">logout</span>
                        </a>           
                    </li>
                   
                </ul>
            </div>
        </div>

         <div class="p-3">
 <div class="row container-fluid">
  <div class="col">
      <label for="pnum" class="form-label">plate number:</label>
    <input type="text" id="pnum" class="form-control" placeholder="enter plate number" aria-label="First name"/>
  </div>
  <div class="col">
      <label for="brand" class="form-label">brand:</label>
    <input type="text" id="brand" class="form-control" placeholder="enter car brand" aria-label="Last name"/>
  </div>
     <div class="mb-3">
      <label for="model" class="form-label">model:</label>
    <input type="text" id="model" class="form-control" placeholder="enter car model" aria-label="Last name"/>
  </div>
     <div class="mb-3">
      <label for="price" class="form-label">price:</label>
    <input type="text" id="price" class="form-control" placeholder="enter the perday price" aria-label="Last name"/>
  </div>
     <div class="mmb-3">
      <label for="color" class="form-label">color:</label>
    <input type="text" id="color" class="form-control" placeholder="the color of the car" aria-label="Last name"/>
  </div>
     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">availablity:</label>
    <asp:DropDownList ID="availablitycb" runat="server"  class="form-control">
        <asp:ListItem>available</asp:ListItem>
        <asp:ListItem>booked</asp:ListItem>
    </asp:DropDownList>
  </div>
</div>
        <br />
 <div class="row">
   <div class="input-group">
  <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload"/>
  <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">Button</button>
</div>

        </div>
            </div>

    </div>
</div>
 

     
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
