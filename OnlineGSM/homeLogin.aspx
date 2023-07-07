<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homeLogin.aspx.cs" Inherits="OnlineGSM.homeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../../Assets/Libraries/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
   <div class="container-fluid">
       <div class="row">
           <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="row mt-5">
                    <div class="col"></div>
                     <div class="col">
                         <h3 class="pl-5">Login Page</h3>
                         <img src="../Assets/Img/pngwing.png" height="200px"/>
                     </div>
                     <div class="col"></div>

                </div>
                <form runat="server">
  <div class="form-group" runat="server">

    <label for="exampleInputEmail1">Email address</label>
    <input type="text" class="form-control" id="UserNameTb" aria-describedby="emailHelp" placeholder="Enter User Id" runat="server" required="required">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="PasswordTb" placeholder="Password" runat="server" required="required">
  </div>


  <div class="form-group">
    <input type="radio" class="form-check-input" id="StudentRadio" name="Role" runat="server">
    <label class="form-check-label" for="exampleCheck1">Student</label>
     
      <input type="radio" class="form-check-input" id="AdminRadio" name="Role" runat="server">
    <label class="form-check-label" for="exampleCheck1">Admin</label>

  </div>


                    <br />
               <div class="form-group d-grid">
                   <label id="InfoMsg" runat="server" class="text-danger">......</label>
               
                    <asp:Button type="submit" id="SaveBtn" class="btn btn-warning btn-block" Text="Login" runat="server" OnClick="SaveBtn_Click" />
    
                   </div>

</form>
            </div>
            <div class="col-md-3"></div>
       </div>
   </div>

    



</body>
</html>