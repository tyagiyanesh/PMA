<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proj.aspx.cs" Inherits="Project.Proj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            Id:
        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ProjectName:
        <asp:TextBox ID="ProjectNameTextBox" runat="server" Text='<%# Bind("ProjectName") %>' />
            <br />
            ProjectInitials:
        <asp:TextBox ID="ProjectInitialsTextBox" runat="server" Text='<%# Bind("ProjectInitials") %>' />
            <br />
            ProjectManager:
        <asp:TextBox ID="ProjectManagerTextBox" runat="server" Text='<%# Bind("ProjectManager") %>' />
            <br />
            BeginDate:
        <asp:TextBox ID="BeginDateTextBox" runat="server" Text='<%# Bind("BeginDate") %>' />
            

            <br />
            EndDate:
        <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                <h2>Create New Project</h2>
            You can create new project
                <tr>
                    <td>Project Name:</td>
                    <td>
                        <asp:TextBox ID="ProjectNameTextBox" runat="server" Text='<%# Bind("ProjectName") %>' Cssclass="form-control"  /></td>
                    <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="ProjectNameTextBox" ErrorMessage=" Project Name is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                </tr>
                <br />
                <tr>
                    <td>Project Initials:</td>
                    <td>
                        <asp:TextBox ID="ProjectInitialsTextBox" runat="server" Text='<%# Bind("ProjectInitials") %>' Cssclass="form-control"  /></td>
                    <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="ProjectInitialsTextBox" ErrorMessage=" Project Initials is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                </tr>
                <br />
                <tr>
                    <td>Project Manager:</td>
                    <td>
                        <asp:TextBox ID="ProjectManagerTextBox" runat="server" Text='<%# Bind("ProjectManager") %>'  Cssclass="form-control" /></td>
                    <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="ProjectManagerTextBox" ErrorMessage=" Project Manager is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                </tr>
                <br />
                <tr>  <td>
                Begin Date:  </td>
         <td> <asp:TextBox ID="BeginDateTextBox" runat="server" Text='<%# Bind("BeginDate") %>' Cssclass="form-control"  />  </td> 
                <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="BeginDateTextBox" ErrorMessage=" Begin Date is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td> 
</tr>
                <br />
                  <tr>
                  <td>End Date:  </td>
       <td>   <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>'  Cssclass="form-control" />  </td>
                      <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="EndDateTextBox" ErrorMessage=" End Date is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                        </tr>
                <br />
                <tr>
               <td> <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-primary"/></td>
             <td>   &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default"/></td>
                    </tr>
                <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("[id$=BeginDateTextBox]").datepicker({
                showOn: 'button',
                buttonImageOnly: true,
                buttonImage: 'calendar.gif'
            });
        });
    </script>
                </table>
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ProjectName:
        <asp:Label ID="ProjectNameLabel" runat="server" Text='<%# Bind("ProjectName") %>' />
            <br />
            ProjectInitials:
        <asp:Label ID="ProjectInitialsLabel" runat="server" Text='<%# Bind("ProjectInitials") %>' />
            <br />
            ProjectManager:
        <asp:Label ID="ProjectManagerLabel" runat="server" Text='<%# Bind("ProjectManager") %>' />
            <br />
            BeginDate:
        <asp:Label ID="BeginDateLabel" runat="server" Text='<%# Bind("BeginDate") %>' />
            <br />
            EndDate:
        <asp:Label ID="EndDateLabel" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Pr] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Pr] ([ProjectName], [ProjectInitials], [ProjectManager], [BeginDate], [EndDate]) VALUES (@ProjectName, @ProjectInitials, @ProjectManager, @BeginDate, @EndDate)" SelectCommand="SELECT * FROM [Pr]" UpdateCommand="UPDATE [Pr] SET [ProjectName] = @ProjectName, [ProjectInitials] = @ProjectInitials, [ProjectManager] = @ProjectManager, [BeginDate] = @BeginDate, [EndDate] = @EndDate WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProjectName" Type="String" />
            <asp:Parameter Name="ProjectInitials" Type="String" />
            <asp:Parameter Name="ProjectManager" Type="String" />
            <asp:Parameter DbType="Date" Name="BeginDate" />
            <asp:Parameter DbType="Date" Name="EndDate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProjectName" Type="String" />
            <asp:Parameter Name="ProjectInitials" Type="String" />
            <asp:Parameter Name="ProjectManager" Type="String" />
            <asp:Parameter DbType="Date" Name="BeginDate" />
            <asp:Parameter DbType="Date" Name="EndDate" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
