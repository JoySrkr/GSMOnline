<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="homelogin2.aspx.cs" Inherits="OnlineGSM.homelogin2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        
        <div class="row">

            <div class="col-md-5">
                 <h3 class="pl-5">Login Page</h3>
                      <center>    <img src="../Assets/Img/pngwing.png" height="200px"/> </center>
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
    <input type="radio" class="form-check-input" id="StdRadio" name="Role" runat="server">
    <label class="form-check-label" for="exampleCheck1">Student</label>
     
      <input type="radio" class="form-check-input" id="PartnerRadio" name="Role" runat="server">
    <label class="form-check-label" for="exampleCheck1">Partner</label>

  </div>



                <div class="form-group d-grid">
                   <label id="InfoMsg" runat="server" class="text-danger">......</label>
               
                    <asp:Button type="submit" id="SaveBtn" class="btn btn-primary" Text="Login" runat="server" OnClick="SaveBtn_Click" />
    
                   </div>
                <br />
                <h5> Don't Have An Account ? <br /><br />  </h5>
                
               <!-- <a href="StudentReg.aspx">StudentReg.aspx</a> -->

                    <a href="StudentReg.aspx" class="link js-custom"> Register as a Student</a>
                    <br /><br />


                    <a href="#" class="link js-custom" > Register as a Partner</a>

               
            </div>
             


            <div class="col-md-7">
                <img src="Assets/Img/login%20side%20img.png" width="674.5px" height="1005.73px" />
               <!-- <img src="Assets/Img/login%20side%20img%202.PNG" /> -->
            </div>

        </div>
    </div>
</asp:Content>
