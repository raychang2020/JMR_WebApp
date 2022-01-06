<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="_0105_WebExample.User.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="user_id" DataSourceID="Users" DefaultMode="Insert">
        <EditItemTemplate>
            user_id:
            <asp:Label ID="user_idLabel1" runat="server" Text='<%# Eval("user_id") %>' />
            <br />
            first_name:
            <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
            <br />
            last_name:
            <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            phone_num:
            <asp:TextBox ID="phone_numTextBox" runat="server" Text='<%# Bind("phone_num") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            role:
            <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            user_id:
            <asp:TextBox ID="user_idTextBox" runat="server" Text='<%# Bind("user_id") %>' />
            <br />
            first_name:
            <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
            <br />
            last_name:
            <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            phone_num:
            <asp:TextBox ID="phone_numTextBox" runat="server" Text='<%# Bind("phone_num") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            role:
            <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            user_id:
            <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
            <br />
            first_name:
            <asp:Label ID="first_nameLabel" runat="server" Text='<%# Bind("first_name") %>' />
            <br />
            last_name:
            <asp:Label ID="last_nameLabel" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
            <br />
            phone_num:
            <asp:Label ID="phone_numLabel" runat="server" Text='<%# Bind("phone_num") %>' />
            <br />
            address:
            <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
            <br />
            role:
            <asp:Label ID="roleLabel" runat="server" Text='<%# Bind("role") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
        </ItemTemplate>

    </asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="Users" AllowPaging="True" AllowSorting="True" BackColor="#FFFF99" BorderColor="Blue" BorderStyle="Solid" BorderWidth="5px">
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
            <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
            <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="phone_num" HeaderText="phone_num" SortExpression="phone_num" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="Users" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" DeleteCommand="DELETE FROM [user] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [user] ([user_id], [first_name], [last_name], [email], [phone_num], [address], [role]) VALUES (@user_id, @first_name, @last_name, @email, @phone_num, @address, @role)" SelectCommand="SELECT * FROM [user]" UpdateCommand="UPDATE [user] SET [first_name] = @first_name, [last_name] = @last_name, [email] = @email, [phone_num] = @phone_num, [address] = @address, [role] = @role WHERE [user_id] = @user_id">
        <DeleteParameters>
            <asp:Parameter Name="user_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="Int32" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone_num" Type="Int32" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="role" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone_num" Type="Int32" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="user_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
