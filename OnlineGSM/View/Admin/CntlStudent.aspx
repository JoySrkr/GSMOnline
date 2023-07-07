﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="CntlStudent.aspx.cs" Inherits="OnlineGSM.View.Admin.CntlStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>

                <div class="col">
                   <center> <h3 class="text-danger pl-4">Control Students </h3> </center>
                   
                    <img src="../../Assets/Img/cntscholarshipimg.png" width="280px" height="175px" /></div>

                    
                <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <form>
                            <div class="form-group">
                              <label for="exampleInputEmail1">Student Name</label>
                              <input type="text" class="form-control" id="StudentNameTb"  placeholder="Enter Student Name" runat="server">
                             
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Student Address</label>
                                <input type="text" class="form-control" id="StudentAddTb" placeholder="Enter Student Address" runat="server">
                               
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Student Phone Number</label>
                                <input type="text" class="form-control" id="StudentPhoneTb" placeholder="Enter Phone Number" runat="server">
                               
                            </div>

                             <div class="form-group">
                                <label for="exampleInputEmail1">Student Password</label>
                                <input type="text" class="form-control" id="StudentPassTb" placeholder="Enter Student Password" runat="server">
                               
                            </div>

                     
                           <!--- <div class="form-check">
                              <input type="checkbox" class="form-check-input" id="exampleCheck1">
                              <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div> -->
                            <br />

                            <br />


                             <label id="ErrorMsg" runat="server"></label>
                            <asp:Button type="sumbit" id="EditBtn" class="btn btn-danger" Text="Edit" runat="server" />
                             <asp:Button type="sumbit" id="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click1" />
                             <asp:Button type="sumbit" id="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" />
                          </form>


                    </div>
                </div>
            </div>
            <div class="col-md-8">
               <!-- <h1>Scholarship List</h1> -->
               <asp:GridView runat="server" ID="StudentList" Class="table table-hover" AutoGenerateSelectButton="True">

               </asp:GridView>
            </div>
        </div>
       
    </div>

</asp:Content>
