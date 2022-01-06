<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="_0105_WebExample.Transaction.Transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Transaction_dropdown" DataTextField="order_id" DataValueField="order_id" AutoPostBack="True">

    </asp:DropDownList>
    <asp:SqlDataSource ID="Transaction_dropdown" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" SelectCommand="SELECT * FROM [order]"></asp:SqlDataSource>


    <asp:FormView ID="FormView1" runat="server" DataKeyNames="order_id" DataSourceID="Transaction_detail">
        <EditItemTemplate>
            seller_id:
            <asp:TextBox ID="seller_idTextBox" runat="server" Text='<%# Bind("seller_id") %>' />
            <br />
            status:
            <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
            <br />
            buyer_id:
            <asp:TextBox ID="buyer_idTextBox" runat="server" Text='<%# Bind("buyer_id") %>' />
            <br />
            order_id:
            <asp:Label ID="order_idLabel1" runat="server" Text='<%# Eval("order_id") %>' />
            <br />
            hide:
            <asp:TextBox ID="hideTextBox" runat="server" Text='<%# Bind("hide") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            seller_id:
            <asp:TextBox ID="seller_idTextBox" runat="server" Text='<%# Bind("seller_id") %>' />
            <br />
            status:
            <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
            <br />
            buyer_id:
            <asp:TextBox ID="buyer_idTextBox" runat="server" Text='<%# Bind("buyer_id") %>' />
            <br />

            hide:
            <asp:TextBox ID="hideTextBox" runat="server" Text='<%# Bind("hide") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            seller_id:
            <asp:Label ID="seller_idLabel" runat="server" Text='<%# Bind("seller_id") %>' />
            <br />
            status:
            <asp:Label ID="statusLabel" runat="server" Text='<%# Bind("status") %>' />
            <br />
            buyer_id:
            <asp:Label ID="buyer_idLabel" runat="server" Text='<%# Bind("buyer_id") %>' />
            <br />
            order_id:
            <asp:Label ID="order_idLabel" runat="server" Text='<%# Eval("order_id") %>' />
            <br />
            hide:
            <asp:Label ID="hideLabel" runat="server" Text='<%# Bind("hide") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="Transaction_detail" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" DeleteCommand="DELETE FROM [order] WHERE [order_id] = @order_id" InsertCommand="INSERT INTO [order] ([seller_id], [status], [buyer_id], [hide]) VALUES (@seller_id, @status, @buyer_id, @hide)" SelectCommand="SELECT * FROM [order] WHERE ([order_id] = @order_id)" UpdateCommand="UPDATE [order] SET [seller_id] = @seller_id, [status] = @status, [buyer_id] = @buyer_id, [hide] = @hide WHERE [order_id] = @order_id">
        <DeleteParameters>
            <asp:Parameter Name="order_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="seller_id" Type="Int32" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="buyer_id" Type="Int32" />
            <asp:Parameter Name="hide" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="order_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="seller_id" Type="Int32" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="buyer_id" Type="Int32" />
            <asp:Parameter Name="hide" Type="String" />
            <asp:Parameter Name="order_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
