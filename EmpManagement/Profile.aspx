<%@ Page Title="" Language="C#" MasterPageFile="~/HOME.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="EmpManagement.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h1>Edit Profile</h1>
  	<hr>
	<div class="row">

<!--Image Upload-->
<!-- left column -->
<div class="col-md-3">
<div class="text-center">
<!--Image-->
<asp:Image ID="ImageDisplay" runat="server" ImageUrl="img/FemaleEmployee.jpg" Height="200" Width="200"/>
<!--BrowseFileUpload-->
<%--<asp:FileUpload ID="BrowseFileUpload" runat="server"/>--%>
<!--ProfileName-->
<%--<asp:Label ID="ProfileNameLabel" runat="server"></asp:Label> --%>
<!--UploadImageButton-->
<%--<asp:Button ID="ImageButton" runat="server" onclick="ImageButton_Click" Text="Upload" BackColor="#3366FF" ForeColor="White" BorderColor="White" /> --%>
<%--<br>--%>
<!--ImageMessageLabel-->
<%--<asp:Label ID="ImageLabel" runat="server" ForeColor="#FF0066"></asp:Label> <br> --%>
<!--EmployeeNameLabel-->
<asp:Label ID="EmployeeNameLabel" runat="server" ForeColor="#CC00FF"></asp:Label> <br>
<!--EmployeeIDLabel-->
<asp:Label ID="EmployeeIDLabel" runat="server" ForeColor="#6600CC"></asp:Label><br> 
<!--DepartmentIDLabel-->
<asp:Label ID="DepartmentIDLabel" runat="server" ForeColor="#6600CC"></asp:Label> 
</div>
</div>
<!--Image Upload-->
      

<left>
<h4>Personal Info</h4>
<!--Form Start-->
          <div class="form-group">
            <label class="col-lg-3 control-label">Name:</label>
            <div class="col-lg-8">
<!--Name--> 
<asp:TextBox ID="NameTextBox" runat="server" placeholder="Enter Name" CssClass="form-control" Width="500px" ></asp:TextBox>
            </div>
          </div>
<!--Email--> 
            <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
<asp:TextBox ID="EmailTextBox" runat="server" placeholder="Enter Email" CssClass="form-control" Width="500px" ></asp:TextBox>
            </div>
          </div>
<!--Contact-->
          <div class="form-group">
            <label class="col-lg-3 control-label">Contact:</label>
            <div class="col-lg-8">
<asp:TextBox ID="ContactTextBox" runat="server" placeholder="Enter Contact" CssClass="form-control" Width="500px" ></asp:TextBox>
            </div>
          </div>
<!--Address-->
          <div class="form-group">
            <label class="col-lg-3 control-label">Address:</label>
            <div class="col-lg-8">
<asp:TextBox ID="AddressTextBox" runat="server" placeholder="Enter Address" CssClass="form-control" Width="500px"></asp:TextBox>
            </div>
            </div>
<!--Button-->
            <div class="form-group">
            <div class="col-md-8">
<!--SaveButton-->
 <asp:Button ID="SaveButton" runat="server" Text="Save Changes" CssClass="btn btn-primary" OnClick="SaveButton_Click" />    
              <span></span>
<!--Reset/CancelButton-->
 <asp:Button ID="CancelButton" runat="server" Text="Cancel" CssClass="btn btn-default" OnClick="CancelButton_Click" />    
            </div>
          </div>
<!--Button-->
<!--Form End-->
    </left>


</div>
</div>

</asp:Content>
