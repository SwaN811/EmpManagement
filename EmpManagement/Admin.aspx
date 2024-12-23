<%@ Page Title="" Language="C#" MasterPageFile="~/HOME.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EmpManagement.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!--Start Employee Content Row -->
<div class="row">
<!--Start Employee Details -->
<div class="col-xl-8 col-lg-7">
<div class="card shadow mb-4">
<!--Start Employee Details Card Header - Dropdown -->
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Employee Details</h6>
                    <div class="dropdown no-arrow">
                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                            aria-labelledby="dropdownMenuLink">
                            <div class="dropdown-header">Dropdown Header:</div>
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </div>
                </div>
<!--End Employee Details Card Header - Dropdown -->

<!--Start Employee Details Card Body -->
<div class="card-body">
             <asp:Label ID="Label1" runat="server" Text="Department ID" ForeColor="Black" Font-Names="Times Roman" Font-Size="Larger" Width="250px"></asp:Label>
             <asp:Label runat="server"  ID="DepIDLabel" Font-Names="Times Roman" ForeColor="#0099FF" Font-Size="Larger"></asp:Label>   
<br />
             <asp:Label ID="Label2" runat="server" Text="Employee ID" ForeColor="Black" Font-Names="Times Roman" Font-Size="Larger" Width="250px"></asp:Label>
             <asp:Label runat="server"  ID="EmpIDLabel" Font-Names="Times Roman" ForeColor="#0099FF" Font-Size="Larger" ></asp:Label>   
<br />
             <asp:Label ID="Label3" runat="server" Text="Employee Name" ForeColor="Black" Font-Names="Times Roman" Font-Size="Larger" Width="250px"></asp:Label>
             <asp:Label runat="server"  ID="EmpNameLabel" Font-Names="Times Roman" ForeColor="#0099FF" Font-Size="Larger" ></asp:Label>
<br />
             <asp:Label ID="Label4" runat="server" Text="Designation" ForeColor="Black" Font-Names="Times Roman" Font-Size="Larger" Width="250px"></asp:Label>
             <asp:Label runat="server"  ID="DesgLabel" Font-Names="Times Roman" ForeColor="#0099FF" Font-Size="Larger" ></asp:Label>
<br />
             <asp:Label ID="Label5" runat="server" Text="Joining Date" ForeColor="Black"  Font-Names="Times Roman" Font-Size="Larger" Width="250px"></asp:Label>
             <asp:Label runat="server"  ID="DateLabel" Font-Names="Times Roman" ForeColor="#0099FF" Font-Size="Larger" ></asp:Label>
<br />
             <asp:Label ID="Label6" runat="server" Text="Email" ForeColor="Black" Font-Names="Times Roman" Font-Size="Larger" Width="250px"></asp:Label>
             <asp:Label runat="server"  ID="EmailLabel" Font-Names="Times Roman" ForeColor="#0099FF" Font-Size="Larger" ></asp:Label>
<br />
              <asp:Label ID="Label7" runat="server" Text="Contact" ForeColor="Black"  Font-Names="Times Roman" Font-Size="Larger" Width="250px"></asp:Label>
              <asp:Label runat="server"  ID="ContactLabel" Font-Names="Times Roman" ForeColor="#0099FF" Font-Size="Larger"></asp:Label>
<br />
             <asp:Label ID="Label8" runat="server" Text="Address" ForeColor="Black" Font-Names="Times Roman" Font-Size="Larger" Width="250px"></asp:Label>
             <asp:Label runat="server"  ID="AddressLabel" Font-Names="Times Roman" ForeColor="#0099FF" Font-Size="Larger" ></asp:Label>
</div>
<!--End Employee Details Card Body -->
</div>
</div>
<!--End Employee Details-->
</div>
<!--End Employee Content Row -->
</asp:Content>
