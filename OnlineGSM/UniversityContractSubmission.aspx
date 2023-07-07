<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="UniversityContractSubmission.aspx.cs" Inherits="OnlineGSM.UniversityContractSubmission" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <center>  <h1>Welcome To The University Form Submission</h1> </center>


         <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                             
                <div class="row">
                    <div class="col">
                         <h2 class="text-danger pl-4">Submission Form </h2>
                        <form>
                            <div class="form-group">


                             
                             
                                <label for="exampleInputEmail1">Degree</label>
                               <asp:DropDownList ID="DegreeTb" runat="server" class="form-control">
                                   <asp:ListItem>Masters Degree</asp:ListItem>
                                    <asp:ListItem>Bachelors Degree</asp:ListItem>
                               </asp:DropDownList>
                               
                            </div>
                                                         

                            <div class="form-group">
                                <label for="exampleInputEmail1">Department Type</label>
                                <input type="text" class="form-control" id="DepTypeTb" placeholder="which Background and Subject" runat="server">
                               
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">University Name</label>
                                <input type="text" class="form-control" id="UniNameTb" placeholder="Enter University" runat="server">
                               
                            </div>

                             <div class="form-group">
                                <label for="exampleInputEmail1">Address</label>
                                <input type="text" class="form-control" id="AddressTb" placeholder="Enter Address" runat="server">
                               
                            </div>

                             <div class="form-group">
                                <label for="exampleInputEmail1">Gross Tution</label>
                                <input type="text" class="form-control" id="GrossTutionTb" placeholder="Enter  Amount" runat="server">
                               
                            </div>

                             <div class="form-group">
                                <label for="exampleInputEmail1">Application Fee</label>
                                <input type="text" class="form-control" id="ApplicationFeeTb" placeholder="Enter Amount" runat="server">
                               
                            </div>

                             <div class="form-group">
                                <label for="exampleInputEmail1">Apply Link</label>
                                <input type="text" class="form-control" id="ApplyLinkTb" placeholder="Enter University website link" runat="server">
                               
                            </div>

                             <div class="form-group">
                                <label for="exampleInputEmail1">Minimum CGPA </label>
                                <input type="text" class="form-control" id="MinCGPATb" placeholder="Enter CGPA" runat="server">
                               
                            </div>

                             <div class="form-group">
                                <label for="exampleInputEmail1">Minimum English Language Score</label>
                                <input type="text" class="form-control" id="MinEngLanScoreTb" placeholder="Enter IELTS score" runat="server">
                               
                            </div>


                            
                           <!--- <div class="form-check">
                              <input type="checkbox" class="form-check-input" id="exampleCheck1">
                              <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div> -->
                            <br />

                            <br />



                        <!--    <button type="submit" class="btn btn-danger">Edit</button>
                             <button type="submit" class="btn btn-danger">Add</button>
                             <button type="submit" class="btn btn-danger">Delete</button> -->
                          
                            <label id="ErrorMsg" runat="server"></label>
                          
                           <asp:Button type="sumbit" id="SaveBtn" class="btn btn-danger" Text="Submit" runat="server" BackColor="#3366FF" Width="150px" OnClick="SaveBtn_Click" /> 
                            

                           <!-- <a href="CntlStudent.aspx"> Forward To StudentList>></a> -->


                            </form>
                        

                    </div>
                </div>
            </div>
           <div class="col-md-8">
               <center> <h2 class="text-danger pl-4">University List</h2>  </center>
               <asp:GridView runat="server" ID="UniversityList" Class="table table-hover" AutoGenerateSelectButton="True" > 

               </asp:GridView>
            </div>

        </div>
           

</asp:Content>
