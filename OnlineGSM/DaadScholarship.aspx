<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/Adminmaster.Master" AutoEventWireup="true" CodeBehind="DaadScholarship.aspx.cs" Inherits="OnlineGSM.DaadScholarship" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1></h1>
    <br />
    <div class="row">
  <div class="col-4">
    <div id="list-example" class="list-group">
      <a class="list-group-item list-group-item-action" href="#list-item-1">Requirements</a>
      <a class="list-group-item list-group-item-action" href="#list-item-2">Documents Required</a>
      <a class="list-group-item list-group-item-action" href="#list-item-3">Other documents</a>
      <a class="list-group-item list-group-item-action" href="#list-item-4">Stipend Amount</a>
    </div>
  </div>
  <div class="col-8">
    <div data-bs-spy="scroll" data-bs-target="#list-example" data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0">
      <h4 id="list-item-1">Requirements for DAAD scholarship</h4>
      <p>The DAAD, or the German Academic Exchange Service, focuses on funding international students get their education abroad. It offers a monthly stipend to students who are winners of this award to cover their expenses during their studies. The requirements for the DAAD scholarship are as follows:
        
        <li>The DAAD scholarships are awarded to students who want to complete a full-time course of study with mandatory attendance in Germany.</li>
        <li>The applicant should have completed their Bachelor degree not more than in the last 6 years.</li>
        <li>The applicant should have at least two years of proven work experience.</li>
        <li>Depending on your degree course, there will be English or German Language requirements.</li>
        <li>If you want to come to Germany for a period of time up to 6 months, you must have lived in your country of residence for at least one year at the time of application.</li>
        <li>If you want to come to Germany for a period of time longer than 6 months, you must have obtained your last degree in your country of residence.</li>
      </p>
      <h4 id="list-item-2">Documents Required for DAAD scholarship</h4>
      <div> First of all, you have to apply online. In order to apply, you must register in the DAAD portal, so you can get access to the application form. The DAAD application form will ask you to submit the following information:
          <li>Name and nationality</li>
          <li>The degree programme you’re applying for</li>
          <li>Gender, academic title, date & place of birth, country of permanent residence</li>
          <li>Contact information</li>
          <li>Secondary school education</li>
          <li>Higher education</li>
          <li>Degrees held</li>
          <li>Duration of the course you’re applying for</li>
          <li>Choice of host university/institution</li>
          <li>Language skills</li>
          <li>Previous visits abroad for study/work</li>
          <li>Practical/professional work experience</li>
          <li>Professional occupation/written proof</li>
          <li>Leave of absence information</li>
          <li>Professional career goal</li>
          <li>Extracurricular interests</li>
      </div>
      <h4 id="list-item-3"> Other Necessary Documents for DAAD scholarship</h4>
      <p>
          <li>When applying for a Study Scholarship, you must submit a letter of motivation.</li>
          <li>When applying for a Research Grant, you must submit a detailed proposal.</li>
          <li>Submit a reference from a university teacher.</li>      
      </p>
      <h4 id="list-item-4">DAAD scholarship stipend amount</h4>
      <p>The monthly stipend you will receive will support your living expenses, health insurance, as well as some travel expenses.
          <li>Postgraduate students will be given a monthly stipend of 850 Euros.</li>
          <li>Doctoral degree course students will be given 1,200 Euros.</li>
      </p>
    </div>
  </div>
</div>
</asp:Content>
