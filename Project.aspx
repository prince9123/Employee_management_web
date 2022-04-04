<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="Employee_Management_System_1.Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div style="background-image: url('.jpg'); width: 1200px; height: 477px">
            <table align="center" style="width: 386px">
                <tr>
                    <td colspan="2" align="center">
                        <h2>
                            Add Project
                        </h2>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td> 
                        Project<b>: &nbsp;&nbsp;&nbsp;</b> 

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="230px"
                            CausesValidation="true" placeholder="Project Name"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="TextBox1"
                            ForeColor="Red" ErrorMessage="Enter Project Name"></asp:RequiredFieldValidator>
                    </td>   
                </tr>
                <tr>
                    <td colspan="2" align="center" aria-atomic="True" >
                        <asp:Button ID="Button1" runat="server" Text="Add" Height="44px"
                            Width="80px" Font-Bold="true" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                     <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
                </tr>    
            </table>
            <div align="center" aria-atomic="False">

            
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PID" Height="202px" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="4" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="Project">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("ProjectName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProjectName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField CausesValidation="False" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <br />
                <br />

            </div>
    </center>

</asp:Content>
