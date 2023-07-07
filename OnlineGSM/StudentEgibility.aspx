<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="StudentEgibility.aspx.cs" Inherits="OnlineGSM.StudentEgibility" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Welcome to the Student Egibility page
    </h1>

    <section>
         <div class="container">
                <div class="row">
                     <span class="border border-info">
                     <div class="col-4">  
                         <form>
                        <h2>Egibility</h2> 
                       <div class="form-group">
                            
                              <label for="exampleInputEmail1">Nationality</label>
                              <input type="text" class="form-control" id="NationalityTb"  placeholder="Enter Student Nationality" runat="server">
                             
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Education Country</label>
                                 <!-- <input type="text" class="form-control" id="StudentAddTb" placeholder="Enter Education Country" runat="server"> -->
                                     <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                   <asp:ListItem>Agentina</asp:ListItem>
                                    <asp:ListItem>Bangladesh</asp:ListItem>
                                     <asp:ListItem>Germany</asp:ListItem>
                                     <asp:ListItem>Brazil</asp:ListItem>

                               </asp:DropDownList>


                              
                               
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Education Level</label>
                                <input type="text" class="form-control" id="EducationLevelTb" placeholder="Enter Education Level" runat="server">
                               
                            </div>

                             <div class="form-group">
                                <label for="exampleInputEmail1">Grading Scheme</label>
                                <input type="text" class="form-control" id="GradingSchTb" placeholder="Grading Scheme" runat="server">
                               
                            </div>
                              <div class="form-group">
                                <label for="exampleInputEmail1">English Exam Type</label>
                                    <asp:DropDownList ID="EnglishExamTypeTb" runat="server" class="form-control">
                                   <asp:ListItem>IELTS</asp:ListItem>
                                    <asp:ListItem>TOEFL</asp:ListItem>
                                     <asp:ListItem>GRE</asp:ListItem>

                               </asp:DropDownList>

                                    <div class="form-group">
                               <!-- <label for="exampleInputEmail1">Test Score</label> -->
                                <input type="text" class="form-control" id="TestScoreTb" placeholder="Overall Score" runat="server">
                               
                            </div>
                               
                            </div>




                              <!--  <input type="text" class="form-control" id="Text5" placeholder="IELTS/TOFEL" runat="server"> -->
                               
                            </div>
                             <br />
                              <label id="ErrorMsg" runat="server"></label>
                            <asp:Button type="sumbit" id="ApplyBtn" class="btn btn-danger" Text="Apply Filters" runat="server" OnClick="ApplyBtn_Click" />
                              </form>
                             
                     </div>
                          </span>
                       
               
                    
                    <div class="col-8"> 
                        <h2>Program Egibility Table</h2>

                        <asp:GridView ID="ProgramList" runat="server" Class="table table-hover" AutoGenerateSelectButton="True">



                        </asp:GridView>
                       

                      

                    </div>
                          

               
                 </div>
            </div>





       
    </section>
</asp:Content>
