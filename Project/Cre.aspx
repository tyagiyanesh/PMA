<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cre.aspx.cs" Inherits="Project.Cre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            Id:
        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            TaskName:
        <asp:TextBox ID="TaskNameTextBox" runat="server" Text='<%# Bind("TaskName") %>' />
            <br />
            TaskDescription:
        <asp:TextBox ID="TaskDescriptionTextBox" runat="server" Text='<%# Bind("TaskDescription") %>' />
            <br />
            AssignTo:
        <asp:TextBox ID="AssignToTextBox" runat="server" Text='<%# Bind("AssignTo") %>' />
            <br />
            BeginDate:
        <asp:TextBox ID="BeginDateTextBox" runat="server" Text='<%# Bind("BeginDate") %>' />
            <br />
            EndDate:
        <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />
            Milestone:
        <asp:TextBox ID="MilestoneTextBox" runat="server" Text='<%# Bind("Milestone") %>' />
            <br />
            Project:
        <asp:TextBox ID="ProjectTextBox" runat="server" Text='<%# Bind("Project") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                <h2>Create New Task</h2>
            You can create new task
                <tr>
                    <td>Task Name:</td>
                    <td>
                        <asp:TextBox ID="TaskNameTextBox" runat="server" Text='<%# Bind("TaskName") %>' Cssclass="form-control"  /></td>
                    <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="TaskNameTextBox" ErrorMessage=" Task Name is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                </tr>
                <br />
                <tr>
                    <td>Task Description:</td>
                    <td>
                        <asp:TextBox ID="TaskDescriptionTextBox" runat="server" Text='<%# Bind("TaskDescription") %>'  Cssclass="form-control" /></td>
                     <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="TaskDescriptionTextBox" ErrorMessage=" Task Description is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                </tr>
                <br />
                <tr>
                    <td>Assign To:</td>
                    <td>
                        <asp:TextBox ID="AssignToTextBox" runat="server" Text='<%# Bind("AssignTo") %>'  Cssclass="form-control" />
                    </td>
                         <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="AssignToTextBox" ErrorMessage=" Assign To is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                </tr>
                <br />
                <tr>
                    <td>Begin Date:</td>
                    <td>
                        <asp:TextBox ID="BeginDateTextBox" runat="server" Text='<%# Bind("BeginDate") %>' Cssclass="form-control"  /></td>
                     <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="BeginDateTextBox" ErrorMessage=" Begin Date is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                </tr>
                <br />
                <tr>
                    <td>End Date:</td>
                    <td>
                        <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>'  Cssclass="form-control" /></td>
                     <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="EndDateTextBox" ErrorMessage=" End Date is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                </tr>
                <br />
                <tr>
                    <td>Milestone:</td>

                    <td>
                        <asp:TextBox ID="MilestoneTextBox" runat="server" Text='<%# Bind("Milestone") %>'  Cssclass="form-control" /></td>
                     <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="MilestoneTextBox" ErrorMessage=" Milestone is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                </tr>
                <br />
                <tr>
                    <td>Project:</td>

                    <td>
                        <asp:TextBox ID="ProjectTextBox" runat="server" Text='<%# Bind("Project") %>' Cssclass="form-control"  /></td>
                     <td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="ProjectTextBox" ErrorMessage=" Project is a required field." ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                    </tr>
                        <br />
                        <tr>
                            <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-primary"/></td>
                        <td>&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" /></td>
                        </tr>
                </table>
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            TaskName:
        <asp:Label ID="TaskNameLabel" runat="server" Text='<%# Bind("TaskName") %>' />
            <br />
            TaskDescription:
        <asp:Label ID="TaskDescriptionLabel" runat="server" Text='<%# Bind("TaskDescription") %>' />
            <br />
            AssignTo:
        <asp:Label ID="AssignToLabel" runat="server" Text='<%# Bind("AssignTo") %>' />
            <br />
            BeginDate:
        <asp:Label ID="BeginDateLabel" runat="server" Text='<%# Bind("BeginDate") %>' />
            <br />
            EndDate:
        <asp:Label ID="EndDateLabel" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />
            Milestone:
        <asp:Label ID="MilestoneLabel" runat="server" Text='<%# Bind("Milestone") %>' />
            <br />
            Project:
        <asp:Label ID="ProjectLabel" runat="server" Text='<%# Bind("Project") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cr] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Cr] ([TaskName], [TaskDescription], [AssignTo], [BeginDate], [EndDate], [Milestone], [Project]) VALUES (@TaskName, @TaskDescription, @AssignTo, @BeginDate, @EndDate, @Milestone, @Project)" SelectCommand="SELECT * FROM [Cr]" UpdateCommand="UPDATE [Cr] SET [TaskName] = @TaskName, [TaskDescription] = @TaskDescription, [AssignTo] = @AssignTo, [BeginDate] = @BeginDate, [EndDate] = @EndDate, [Milestone] = @Milestone, [Project] = @Project WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TaskName" Type="String" />
            <asp:Parameter Name="TaskDescription" Type="String" />
            <asp:Parameter Name="AssignTo" Type="String" />
            <asp:Parameter DbType="Date" Name="BeginDate" />
            <asp:Parameter DbType="Date" Name="EndDate" />
            <asp:Parameter Name="Milestone" Type="String" />
            <asp:Parameter Name="Project" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TaskName" Type="String" />
            <asp:Parameter Name="TaskDescription" Type="String" />
            <asp:Parameter Name="AssignTo" Type="String" />
            <asp:Parameter DbType="Date" Name="BeginDate" />
            <asp:Parameter DbType="Date" Name="EndDate" />
            <asp:Parameter Name="Milestone" Type="String" />
            <asp:Parameter Name="Project" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
