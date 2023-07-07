<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="StudentReg.aspx.cs" Inherits="OnlineGSM.StudentReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <img src="Assets/Img/student%20reg.jpg" width="674px" height="1005.73px" />

            </div>
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                       
                         <h3>Welcome To Student Registration</h3>
                         <form>
                            <div class="form-group">
                              <label for="exampleInputEmail1">First Name</label>
                              <input type="text" class="form-control" id="FirstNameTb"  placeholder="Enter Student First Name" runat="server">
                             
                            </div>
                              <div class="form-group">
                              <label for="exampleInputEmail1">Last Name</label>
                              <input type="text" class="form-control" id="LastNameTb"  placeholder="Enter Student Last Name" runat="server">
                             
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input type="text" class="form-control" id="EmailTb" placeholder="Enter Student Email" runat="server">
                               
                            </div>

                             <div class="form-group">
                                <label for="exampleInputEmail1"> Password</label>
                                <input type="password" class="form-control" id="PasswordTb" placeholder="Enter Student Password" runat="server">                             
                            </div>

                             <div class="form-group">
                                <label for="exampleInputEmail1">Confarm Password</label>
                                <input type="password" class="form-control" id="ConfPassTb" placeholder="Enter Confarm Password" runat="server">                             
                            </div>

                             <div class="form-group">
                                <label for="exampleInputEmail1">Nationality</label>
                                <input type="text" class="form-control" id="NationalityTb" placeholder="Enter Student Nationality" runat="server">                             
                            </div>


                            <div class="form-group">
                                <label for="exampleInputEmail1">Phone Number</label>
                                <input type="text" class="form-control" id="PhoneNumberTb" placeholder="Enter Phone Number" runat="server">
                               
                            </div>
                                                     
                             <label id="ErrorMsg" runat="server"></label>
                           
                            <div class="form-group d-grid">             
                    <asp:Button type="submit" id="SaveBtn" class="btn btn-primary" Text="Create Account" runat="server" OnClick="SaveBtn_Click" />
    
                   </div>                          
                          </form>

                      

                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
