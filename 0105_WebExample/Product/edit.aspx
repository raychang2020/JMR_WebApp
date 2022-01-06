<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="_0105_WebExample.Product.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Product" DataTextField="title" DataValueField="product_id" AutoPostBack="True">

</asp:DropDownList>
<asp:SqlDataSource ID="Product" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="product_id" DataSourceID="product_detail">
        <EditItemTemplate>
            product_id:
            <asp:Label ID="product_idLabel1" runat="server" Text='<%# Eval("product_id") %>' />
            <br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br />
            category_id:
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="category" DataTextField="description" DataValueField="category_id" SelectedValue='<%# Bind("category_id") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="category" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
            <br />
            payment:
            <asp:TextBox ID="paymentTextBox" runat="server" Text='<%# Bind("payment") %>' />
            <br />
            location:
            <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
            <br />
            country:
            <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
            <br />
            condition:
            <asp:TextBox ID="conditionTextBox" runat="server" Text='<%# Bind("condition") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            created_data:
            <asp:TextBox ID="created_dataTextBox" runat="server" Text='<%# Bind("created_data") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            product_id:
            <asp:TextBox ID="product_idTextBox" runat="server" Text='<%# Bind("product_id") %>' />
            <br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br />
            category_id:
            <asp:TextBox ID="category_idTextBox" runat="server" Text='<%# Bind("category_id") %>' />
            <br />
            payment:
            <asp:TextBox ID="paymentTextBox" runat="server" Text='<%# Bind("payment") %>' />
            <br />
            location:
            <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
            <br />
            country:
            <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
            <br />
            condition:
            <asp:TextBox ID="conditionTextBox" runat="server" Text='<%# Bind("condition") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            created_data:
            <asp:TextBox ID="created_dataTextBox" runat="server" Text='<%# Bind("created_data") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            product_id:
            <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
            <br />
            title:
            <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
            <br />
            category_id:
            <asp:Label ID="category_idLabel" runat="server" Text='<%# Bind("category_id") %>' />
            <br />
            payment:
            <asp:Label ID="paymentLabel" runat="server" Text='<%# Bind("payment") %>' />
            <br />
            location:
            <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
            <br />
            country:
            <asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>' />
            <br />
            condition:
            <asp:Label ID="conditionLabel" runat="server" Text='<%# Bind("condition") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
            <br />
            created_data:
            <asp:Label ID="created_dataLabel" runat="server" Text='<%# Bind("created_data") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="product_detail" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [product_id] = @product_id" InsertCommand="INSERT INTO [product] ([product_id], [title], [category_id], [payment], [location], [country], [condition], [price], [created_data]) VALUES (@product_id, @title, @category_id, @payment, @location, @country, @condition, @price, @created_data)" SelectCommand="SELECT * FROM [product] WHERE ([product_id] = @product_id)" UpdateCommand="UPDATE [product] SET [title] = @title, [category_id] = @category_id, [payment] = @payment, [location] = @location, [country] = @country, [condition] = @condition, [price] = @price, [created_data] = @created_data WHERE [product_id] = @product_id">
        <DeleteParameters>
            <asp:Parameter Name="product_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="product_id" Type="Int32" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="category_id" Type="Int32" />
            <asp:Parameter Name="payment" Type="String" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="condition" Type="Double" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter DbType="Date" Name="created_data" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="product_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="category_id" Type="Int32" />
            <asp:Parameter Name="payment" Type="String" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="condition" Type="Double" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter DbType="Date" Name="created_data" />
            <asp:Parameter Name="product_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
