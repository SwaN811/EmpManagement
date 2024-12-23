<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="EmpManagement.Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Forgot Password</title>

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
<body>
<%-- <div class="container">--%>
<div class="bg-gradient-primary">

     <!-- Outer Row -->
     <div class="row justify-content-center">

         <div class="col-xl-10 col-lg-12 col-md-9">

             <div class="card o-hidden border-0 shadow-lg my-5">
                 <div class="card-body p-0">
                     <!-- Nested Row within Card Body -->
                     <div class="row">
                         <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                         <div class="col-lg-6">
                             <div class="p-5">
                                 <div class="text-center">
                                     <h1 class="h4 text-gray-900 mb-2">Forgot Your Password?</h1>
                                     <p class="mb-4">We get it, stuff happens. Just enter your email address below
                                         and we'll send you a link to reset your password!</p>
                                 </div>


    <div class="user">
<form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
<asp:TextBox ID="txtUsername"  runat="server" CssClass="form-control form-control-user" placeholder="Enter UserName"></asp:TextBox>
    <asp:RequiredFieldValidator ErrorMessage="UserName Required" ForeColor="Red" ControlToValidate="txtUsername" runat="server" />
   <br />

<!--Password-->
<asp:TextBox ID="txtCurrentPassword"  runat="server" TextMode="Password" CssClass="form-control form-control-user" placeholder="Enter Current Password"></asp:TextBox>
    <asp:RequiredFieldValidator ErrorMessage="Enter Current Password" ForeColor="Red" ControlToValidate="txtCurrentPassword" runat="server" />
    <br />
<asp:TextBox ID="txtNewPassword"       runat="server" TextMode="Password" CssClass="form-control form-control-user" placeholder="Enter New Password"></asp:TextBox>
    <asp:RequiredFieldValidator ErrorMessage="Enter New Password" ForeColor="Red" ControlToValidate="txtNewPassword" runat="server" />    
    <br />
<asp:TextBox ID="txtConfirmNewPassword" runat="server" TextMode="Password" CssClass="form-control form-control-user" placeholder="Confirm New Password"></asp:TextBox>
    <asp:RequiredFieldValidator ErrorMessage="Confirm New Password" ForeColor="Red" ControlToValidate="txtConfirmNewPassword" runat="server" />        
<asp:CompareValidator ID="CompareValidator1" runat="server" 
ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmNewPassword" 
ErrorMessage="Password does not match." ForeColor="Red"></asp:CompareValidator>    
    <br />
<!--Password-->

<!--Reset Button-->
 <asp:Button ID="ResetButton" runat="server" Text="Reset Password" Width="350px" CssClass="btn btn-primary btn-user btn-block" OnClick="ResetPasswordButton_Click" />    
<!--Reset Button-->
<asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
</form>
</div>
                                <hr/>
                                <div class="text-center">
                                    <a class="small" href="Register.aspx">Create an Account!</a>
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

        <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
</body>
</html>
