<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Use.aspx.cs" Inherits="Project.Use" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" RenderOuterTable="False">
        <EditItemTemplate>
            Id:
       <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            FullName:
        <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
            <br />

            EmailId:
       <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
            <br />
            Password:
        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            Active:
        <asp:CheckBox ID="ActiveCheckBox" runat="server" Checked='<%# Bind("Active") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></table>
        </EditItemTemplate>
        <InsertItemTemplate>
            <h2>Create New User</h2>
            You can register as a new member
            <table>
                <tr>
                    <td>Full Name:<style="red">*</style></color></td>
                    <td>
                        <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' Cssclass="form-control" />
                    </td><td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="FullNameTextBox" ErrorMessage="Name is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                </tr>
                <br />
                <tr>
                    <td>Email Id:</td>
                    <td>
                        <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' Cssclass="form-control"   />
                    </td>
                    <td>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="EmailIdTextBox" ErrorMessage="Email Id is a required field." ForeColor="Red">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Email ID" ControlToValidate="EmailIdTextBox" 
                CssClass="requiredFieldValidateStyle" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator></td>
                
                </tr>
                <br />
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" runat="server"  TextMode="password" Text='<%# Bind("Password") %>' Cssclass="form-control"  />
                    </td>
                    <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Password is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
          
                </tr>
                <br /><TE>
                <td>Conform Password:</td>
                <td>
                        <asp:TextBox ID="ConformPasswordTextBox" runat="server"  TextMode="password"  Cssclass="form-control"  />
                    </td>
                    <td><asp:CompareValidator ID="CompareValidator1" runat="server" 
    ErrorMessage="Passwords do not match."    ControlToCompare="ConformPasswordTextBox"
    ControlToValidate="PasswordTextBox">
</asp:CompareValidator></td>
               </tr>
                <tr>
                    <td>Active:</td>
                    <td>
                        <asp:CheckBox ID="ActiveCheckBox" runat="server" Checked='<%# Bind("Active") %>' />
                    </td>
                </tr>
                <br />
                <tr>
                    <td>
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />

                    </td>
                    <td>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default"/>
                    </td>
                </tr>
            </table>
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            FullName:
        <asp:Label ID="FullNameLabel" runat="server" Text='<%# Bind("FullName") %>' />
            <br />
            EmailId:
        <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Bind("EmailId") %>' />
            <br />
            Password:
        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            Active:
        <asp:CheckBox ID="ActiveCheckBox" runat="server" Checked='<%# Bind("Active") %>' Enabled="false" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Us] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Us] ([FullName], [EmailId], [Password], [Active]) VALUES (@FullName, @EmailId, @Password, @Active)" SelectCommand="SELECT * FROM [Us]" UpdateCommand="UPDATE [Us] SET [FullName] = @FullName, [EmailId] = @EmailId, [Password] = @Password, [Active] = @Active WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Active" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Active" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
