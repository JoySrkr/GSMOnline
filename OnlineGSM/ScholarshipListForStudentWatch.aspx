<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="ScholarshipListForStudentWatch.aspx.cs" Inherits="OnlineGSM.ScholarshipListForStudentWatch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <nav class="navbar navbar-light bg-light">
  <form class="form-inline">
    <button class="btn btn-outline-success" type="button">Apply</button>
   <!-- <button class="btn btn-sm btn-outline-secondary" type="button">Smaller button</button> -->
  </form>
</nav>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <button type="button" class="btn btn-outline-primary">Check Program</button>
                        </div>
                    </div>
                </div>

                 
                       <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <button type="button" class="btn btn-outline-primary">Choose Program</button>
                        </div>
                    </div>
                </div>

                

                

                      <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <button type="button" class="btn btn-primary btn-lg">Apply Program</button>
                        </div>
                    </div>
                </div>

               

            </div>
        </div>


    </section>

    <div class="container">
        <div class="row">

            <asp:GridView ID="UniveresityList" runat="server" Class="table table-hover" AutoGenerateColumns="False" DataKeyNames="DeptType" DataSourceID="SqlDataSource1" >
                <Columns>
                    <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                    <asp:BoundField DataField="DeptType" HeaderText="DeptType" ReadOnly="True" SortExpression="DeptType" />
                    <asp:BoundField DataField="UniName" HeaderText="UniName" SortExpression="UniName" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="GrossTution" HeaderText="GrossTution" SortExpression="GrossTution" />
                    <asp:BoundField DataField="ApplicationFee" HeaderText="ApplicationFee" SortExpression="ApplicationFee" />
                    <asp:BoundField DataField="ApplyLink" HeaderText="ApplyLink" SortExpression="ApplyLink" />
                    <asp:BoundField DataField="MinCGPA" HeaderText="MinCGPA" SortExpression="MinCGPA" />
                    <asp:BoundField DataField="MinEngLanScore" HeaderText="MinEngLanScore" SortExpression="MinEngLanScore" />
                </Columns>



                        </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GScholarMConnectionString4 %>" SelectCommand="SELECT * FROM [ProgEgibl]"></asp:SqlDataSource>

        </div>
    </div>

</asp:Content>
