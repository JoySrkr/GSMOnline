<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="CntlScholarship.aspx.cs" Inherits="OnlineGSM.View.Admin.CntlScholarship" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col"></div>

                <div class="col">
                   <h3 class="text-danger pl-4">Control Scholarship </h3>
                   
                   
                    <img src="../../Assets/Img/cntscholarshipimg.png" width="280px" height="175px" /></div>

                    
                <div class="col"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <form>
                            <div class="form-group">

                               
                             <label for="exampleInputEmail1">Country Name</label> 
                              <input type="text" class="form-control" id="CountryNameTb"  placeholder="Enter Country Name" runat="server">
                             
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Background Department</label>
                                <input type="text" class="form-control" id="BgDepTb" placeholder="Enter Background like science or arts or commerce" runat="server">
                               
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Department Type</label>
                                <input type="text" class="form-control" id="DepTypeTb" placeholder="Enter Department name" runat="server">
                               
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Status</label>
                               <asp:DropDownList ID="StatusCb" runat="server" class="form-control">
                                   <asp:ListItem>Available</asp:ListItem>
                                    <asp:ListItem>Not-Available</asp:ListItem>
                               </asp:DropDownList>
                               
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
                            <asp:Button type="sumbit" id="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click" />
                             <asp:Button type="sumbit" id="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click" />
                             <asp:Button type="sumbit" id="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click" />

                            <a href="CntlStudent.aspx"> Forward To StudentList>></a>


                            </form>


                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <h1>Scholarship List</h1>
               <asp:GridView runat="server" ID="ScholarshipList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ScholarshipList_SelectedIndexChanged">

               </asp:GridView>
            </div>
        </div>
       
    </div>



</asp:Content>
