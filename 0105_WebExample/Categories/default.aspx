<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_0105_WebExample.Categories._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="category_id" DataSourceID="ProductType" DefaultMode="Insert">
        <EditItemTemplate>
            category_id:
            <asp:Label ID="category_idLabel1" runat="server" Text='<%# Eval("category_id") %>' />
            <br />
            description:
            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            category_id:
            <asp:TextBox ID="category_idTextBox" runat="server" Text='<%# Bind("category_id") %>' />
            <br />
            description:
            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;
        </InsertItemTemplate>
        <ItemTemplate>
            category_id:
            <asp:Label ID="category_idLabel" runat="server" Text='<%# Eval("category_id") %>' />
            <br />
            description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Bind("description") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
        </ItemTemplate>
    </asp:FormView>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="category_id" DataSourceID="ProductType">
        <Columns>
            <asp:BoundField DataField="category_id" HeaderText="category_id" ReadOnly="True" SortExpression="category_id" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView> 
<asp:SqlDataSource ID="ProductType" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" SelectCommand="SELECT * FROM [category]" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([category_id], [description]) VALUES (@category_id, @description)" UpdateCommand="UPDATE [category] SET [description] = @description WHERE [category_id] = @category_id">
    <DeleteParameters>
        <asp:Parameter Name="category_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="category_id" Type="Int32" />
        <asp:Parameter Name="description" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="category_id" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
