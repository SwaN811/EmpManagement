<%@ Page Title="" Language="C#" MasterPageFile="~/HOME.Master" AutoEventWireup="true" CodeBehind="AddNewUser.aspx.cs" Inherits="EmpManagement.AddNewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <script>
     $(function () {
         $(".date").datepicker({
             changeMonth: true,
             changeYear: true
         });
     });
         </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="d-sm-flex align-items-center justify-content-between mb-4">
<asp:Label ID="Label1" runat="server" Text="Add New-User" Font-Bold="True" Font-Names="STLiti" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </div>
<div class="card shadow mb-10">
      <div class="card-header py-3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label2" runat="server" Text="Employee Details" Font-Bold="True" Font-Names="STLiti" Font-Size="X-Large" ForeColor="Black"></asp:Label>
      </div>
      <div class="card-body">
      <!-- Outer Row -->
  <div class="row justify-content-center">
      <div class="col-xl-10 col-lg-12 col-md-9">

<!-- EmployeeID -->
<div class="form-group row">
    <asp:Label ID="EmpLbl" runat="server" Text="" ></asp:Label>
    <asp:Label ID="EmpIDLbl" runat="server" ></asp:Label>
     <br />
</div>
<!-- EmployeeID -->

<!-- EmployeeName -->
<div class="form-group row">
    <asp:Label ID="EmpNameLbl" runat="server" Text="Employee Name" CssClass="col-sm-3" Font-Bold="True" Font-Names="STLiti" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="EmpNameTxt" runat="server" placeholder="Enter Name" CssClass="form-control form-control-user col-sm-3" Font-Names="STLiti" ></asp:TextBox>
    <asp:RequiredFieldValidator ErrorMessage="Name Required" ForeColor="Red" ControlToValidate="EmpNameTxt" runat="server" Font-Names="STLiti" />
    <br />
</div>
<!-- EmployeeName -->

<!-- Designation --> 
<div class="form-group row">
    <asp:Label ID="DesgLbl" runat="server" Text="Designation" CssClass="col-sm-3" Font-Bold="True" Font-Names="STLiti" ForeColor="Black"></asp:Label>
     <!-- DropDownList2 -->
    <asp:DropDownList ID="DesgDdl" runat="server" CssClass="form-control-user col-sm-3" style="left: 0px; top: 0px" Font-Names="STLiti" ForeColor="#666666">
    <asp:ListItem Text="---Select Designation---" Value="0"></asp:ListItem>
    <asp:ListItem>CEO</asp:ListItem>
    <asp:ListItem>Senior Manager</asp:ListItem>
    <asp:ListItem>Assistant Manager</asp:ListItem>
    <asp:ListItem>Junior Manager</asp:ListItem>
    <asp:ListItem>Senior Developer</asp:ListItem>
    <asp:ListItem>Assistant Developer</asp:ListItem>
    <asp:ListItem>Junior Developer</asp:ListItem>
    </asp:DropDownList>
    <!-- DropDownList2 -->    
     <asp:RequiredFieldValidator ErrorMessage="Designation Required" ForeColor="Red" ControlToValidate="DesgDdl" InitialValue="0" runat="server" Font-Names="STLiti" />
</div>
<!-- Designation --> 

<!-- DepartmentID -->
<div class="form-group row">
    <asp:Label ID="DepLbl" runat="server" Text="Department ID" CssClass="col-sm-3" Font-Bold="True" Font-Names="STLiti" ForeColor="Black"></asp:Label>
    <!-- DropDownList1 -->
    <asp:DropDownList ID="DepDdl" runat="server" CssClass="form-control-user col-sm-3" style="left: 0px; top: 0px" Font-Names="STLiti" ForeColor="#666666">
    </asp:DropDownList>
    <!-- DropDownList1 -->
    <asp:RequiredFieldValidator ErrorMessage="Department ID Required" ForeColor="Red" ControlToValidate="DepDdl" InitialValue="0" runat="server" Font-Names="STLiti" />
    <br />
</div>
<!-- DepartmentID -->

<!-- DateCalender -->
 <div class="form-group row">
    <asp:Label ID="DateLbl" runat="server" Text="Joining Date" CssClass="col-sm-3" Font-Bold="True" Font-Names="STLiti" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="DateTxt" runat="server" placeholder="Enter Date" CssClass="date form-control form-control-user col-sm-3 date" Width="400px" Font-Names="STLiti"></asp:TextBox>
    <asp:RequiredFieldValidator ErrorMessage="Date Required" ForeColor="Red" ControlToValidate="DateTxt" runat="server" Font-Names="STLiti" />
     <br />
 </div>
<!-- DateCalender -->

<!-- Email -->
<div class="form-group row">
    <asp:Label ID="EmailLbl" runat="server" Text="Email" CssClass="col-sm-3" Font-Bold="True" Font-Names="STLiti" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="EmailTxt" runat="server" placeholder="Enter Email" CssClass="form-control form-control-user col-sm-3" Width="400px" Font-Names="STLiti"></asp:TextBox>
    <asp:RequiredFieldValidator ErrorMessage="Email Required" ForeColor="Red" ControlToValidate="EmailTxt" runat="server" Font-Names="STLiti" />
    <br />
</div>
<!-- Email -->

<!-- Mobile -->
<div class="form-group row">
    <asp:Label ID="MobLbl" runat="server" Text="Contact" CssClass="col-sm-3" Font-Bold="True" Font-Names="STLiti" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="MobTxt" runat="server" placeholder="Enter Contact Info" CssClass="form-control form-control-user col-sm-3" MaxLength="10" Font-Names="STLiti" ForeColor="Black" ></asp:TextBox>
   <asp:RequiredFieldValidator ErrorMessage="Mobile No. Required" ForeColor="Red" ControlToValidate="MobTxt" runat="server" Font-Names="STLiti" />
    <br />
</div>
<!-- Mobile -->

<!-- Address -->
<div class="form-group row">
    <asp:Label ID="AddLbl" runat="server" Text="Address" CssClass="col-sm-3" Font-Bold="True" Font-Names="STLiti" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="AddTxt" runat="server" placeholder="Enter Address" CssClass="form-control form-control-user col-sm-3" Font-Names="STLiti"></asp:TextBox>
   <asp:RequiredFieldValidator ErrorMessage="Address Required" ForeColor="Red" ControlToValidate="AddTxt" runat="server" Font-Names="STLiti" />
    <br />
</div>
<!-- Address -->

<%--<!--Image-->
          <asp:FileUpload ID="ImageFileUpload" runat="server"/>--%>

<!--Image-->

<!-- Button -->
        <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="SaveBtn" runat="server" OnClick="Button1_Click" Text="Save" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" Font-Bold="True" Font-Names="STLiti" Font-Size="Large" ForeColor="Black" Width="150px"/>
        <br />
<!-- Button -->

</div>
</div>
</div>
</div>
</asp:Content>
