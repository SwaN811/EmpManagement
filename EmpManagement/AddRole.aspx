<%@ Page Title="" Language="C#" MasterPageFile="~/HOME.Master" AutoEventWireup="true" CodeBehind="AddRole.aspx.cs" Inherits="EmpManagement.AddRole" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Assign Role" Font-Names="Algerian" Font-Size="X-Large" ForeColor="Black"></asp:Label>
<br />
<br />
<!--Employee ID-->
<div class="form-group row">
    <asp:Label ID="EmpLbl" runat="server" Text="Employee ID" CssClass="col-sm-3" Font-Bold="True" Font-Size="Large" ForeColor="Black" Font-Names="STLiti"></asp:Label>
    <asp:TextBox ID="EmpTxt" runat="server" PlaceHolder="Enter Employee_ID" CssClass="form-control-user col-sm-3" Font-Names="STLiti"></asp:TextBox>
     <asp:RequiredFieldValidator ErrorMessage="Employee ID Required" ForeColor="Red" ControlToValidate="EmpTxt" runat="server" Font-Names="STLiti" />
</div>   
<!--Employee ID-->    

<!-- Role -->
<div class="form-group row">
    <asp:Label ID="RolLbl" runat="server" Text="Role" CssClass="col-sm-3" Font-Bold="True" Font-Size="Large" ForeColor="Black" Font-Names="STLiti"></asp:Label>
     <!-- RolDdl -->
    <asp:DropDownList ID="RolDdl" runat="server" CssClass="form-control-user col-sm-3" style="left: 0px; top: 0px" Font-Names="STLiti">
    <asp:ListItem Text="---Select Role---" Value="0"></asp:ListItem>
    <asp:ListItem>Admin</asp:ListItem>
    <asp:ListItem>User</asp:ListItem>
    </asp:DropDownList>
    <!-- RolDdl -->    
     <asp:RequiredFieldValidator ErrorMessage="Role Required" ForeColor="Red" ControlToValidate="RolDdl" InitialValue="0" runat="server" Font-Names="STLiti" />
</div>
<!-- Role -->
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!-- Button -->
    <asp:Button ID="SavBtn" runat="server" Text="Save" OnClick="SavBtn_Click" BackColor="#3399FF" BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" Font-Bold="True" Font-Names="STLiti" Font-Size="Large" ForeColor="Black" Width="150px" />
<!-- Button -->
</asp:Content>
