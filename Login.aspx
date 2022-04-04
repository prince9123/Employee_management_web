<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Employee_Management_System_1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
       <div class="auto-style1">
           <table style="width: 565px; height: 421px; background-color:#0026ff; margin:0 auto">
               <tr>
                   <td colspan="2" align="center">
                       &nbsp;<img class="auto-style2"src="images/kindpng_2738790 (3).png" /></td>
               </tr>
               <tr>
                   <td colspan="2" align="center" >
                       <h2>Employee & Admin Login </h2>
                   </td>
               </tr>
               <tr>
                   <td align="center" class="auto-style3">
                       <b>Email ID / User ID:</b>
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" Height="29px"
                           Width="199px" Font-Bold="True" placeholder="Enter Email_Id/User ID"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatior1" runat="server"
                           ControlToValidate="TextBox1" ErrorMessage="Enter Email-ID" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td align="center" class="auto-style3">
                       <b>Password:</b>
                   </td>
                   <td>
                       <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" Height="29px"
                           width="201px" TextMode="Password" Font-Bold="true" placeholder="Enter Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                           ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td colspan="2" align="center">
                       <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="true"
                           Height="46px" Width="201px" BackColor="Red" OnClick="Button1_Click" /><hr />
                   </td>
               </tr>
               <tr>
                   <td class="auto-style3">
                       <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
                   </td>
                  
               </tr>
           </table>
       </div>
   </form>
</body>
</html>
