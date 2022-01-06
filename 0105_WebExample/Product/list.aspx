<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="_0105_WebExample.Product.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ProductType" DataTextField="description" DataValueField="category_id"></asp:DropDownList>

    <asp:SqlDataSource ID="ProductType" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="Product">
        <Columns>
            <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id" />
            <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment" />
            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
            <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
            <asp:BoundField DataField="condition" HeaderText="condition" SortExpression="condition" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="created_data" HeaderText="created_data" SortExpression="created_data" />
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="Product" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([category_id] = @category_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="category_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
