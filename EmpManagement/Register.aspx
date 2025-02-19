﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EmpManagement.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>

  <title>Register Your Account!</title>

<!--Disable Back Button After LoginPage-->
<script type="text/javascript" language="javascript">
    function noBack() {
        window.history.forword()
    }
    noBack();
    window.onload = noBack();
    window.onpageshow = function (evt) { if (evt.persisted) noBack(); }
    window.onunload = function () { void (0); }
</script>
<!--Disable Back Button After LoginPage-->

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
  <link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet"/>

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet"/>
</head>
<body class="bg-gradient-primary">
    <form id="form1" runat="server">
<div>
<!--Register Form Page Start-->
<div class="container">
<div class="bg-gradient-primary">
<div class="card o-hidden border-0 shadow-lg my-5">
<div class="card-body p-0">
<!-- Nested Row within Card Body -->
<div class="row">
<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
<div class="col-lg-7">
<div class="p-5">
<div class="text-center">
<h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
</div>
<!--USER ID-->
<asp:TextBox ID="txtUsername" runat="server" TextMode="Password" CssClass="form-control form-control-user " placeholder="Enter User ID"></asp:TextBox>
 <asp:RequiredFieldValidator ErrorMessage="UserID Required" ForeColor="Red" ControlToValidate="txtPassword" runat="server" />
<!--USER ID-->
<!--PASSWORD-->
<!--Password-->
<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control form-control-user " placeholder="Enter Password"></asp:TextBox>
 <asp:RequiredFieldValidator ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="txtPassword" runat="server" />
<!--Password-->
<!--Confirm Password-->
<asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control form-control-user " placeholder="Confirm Password"></asp:TextBox>
<asp:CompareValidator ID="CompareValidator1" runat="server" 
ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
ErrorMessage="Password does not match." ForeColor="Red"></asp:CompareValidator>
<asp:RequiredFieldValidator ErrorMessage="This Field cannot be blank." ForeColor="Red" ControlToValidate="txtConfirmPassword" runat="server" />
<!--Confirm Password-->
<!--PASSWORD-->
<!--SUBMIT-->
<center>
<asp:Button ID="SubmitButton" runat="server" Text=" Register Account" CSSClass="btn btn-success" OnClick="SubmitButton_Click" />    
</center>
<!--SUBMIT-->
<div class="text-center">
<a class="small" href="Password.aspx">Forgot Password?</a>
</div>
<div class="text-center">
<a class="small" href="Login.aspx">Already have an account? Login!</a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
    </form>
</body>
</html>
