<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmpManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<meta name="description" content=""/>
<meta name="author" content=""/>

<title>Login Account</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
<link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet"/>

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet"/>
    <!--Disable Back Button After LoginPage-->
<script type="text/javascript" language="javascript">
    function noBack() {
        window.history.forward()
    }
    noBack();
    window.onload = noBack();
    window.onpageshow = function (evt) { if (evt.persisted) noBack(); }
    window.onunload = function () { void (0); }
</script>
<!--Disable Back Button After LoginPage-->
</head>
<body>
<form id="form1" runat="server">
<div>
<div class="bg-gradient-primary">
<div class="container">
<!-- Outer Row -->
<div class="row justify-content-center">
<div class="col-xl-10 col-lg-12 col-md-9">
<div class="card o-hidden border-0 shadow-lg my-5">
<div class="card-body p-0">
<!-- Nested Row within Card Body -->
<div class="row">
<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
<div class="col-lg-6">
<div class="p-5">
<div class="text-center">
<asp:Label ID="Label1" runat="server" Text="Welcome Back!" Font-Bold="True" Font-Names="STLiti" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
</div>
<div>
<div class="form-group">
<asp:TextBox ID="UserTextBox1" runat="server" autocomplete="off" AutoCompleteType="Disabled" CssClass="form-control form-control-user" placeholder="Enter UserName" Font-Names="STLiti"></asp:TextBox>
<asp:RequiredFieldValidator ErrorMessage="User ID Required" ForeColor="Red" ControlToValidate="UserTextBox1" runat="server" Font-Names="STLiti" />
</div>
<div class="form-group">
<asp:TextBox ID="PasswordTextBox2" runat="server" autocomplete="off" AutoCompleteType="Disabled" TextMode="Password" CssClass="form-control form-control-user" placeholder="Enter Password" Font-Names="STLiti"></asp:TextBox>
<center>
<asp:CheckBox ID="CheckBox1" runat="server" Font-Names="STLiti" />
    <asp:Label ID="Label2" runat="server" Text="Remember Me!" Font-Names="STLiti"></asp:Label>

</center>
<asp:RequiredFieldValidator ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="PasswordTextBox2" runat="server" Font-Names="STLiti" />
</div>
<center>
<asp:Button ID="LoginButton1" runat="server" Text="Login" Width="150px" CssClass="btn btn-primary btn-user btn-block" OnClick="Button2_Click" Font-Names="STLiti" />
</center>
<div class="text-center">
<a class="small" href="Password.aspx">Forgot Password?</a>
</div>
<div class="text-center">
Don't have an account?
<a class="small" href="Register.aspx">Create an Account!</a>
</div>
</div>
</div>
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
