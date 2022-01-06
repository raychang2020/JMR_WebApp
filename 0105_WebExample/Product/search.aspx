<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="_0105_WebExample.Product.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Title Keyword:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" />
    </p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="search_title">
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

     <p>
        ID Keyword:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Search" />
    </p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="search_id">
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

     <p>
        Condition Keyword:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="Search" />
    </p>
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="search_condition">
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

    <p>
        Lower Price:
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
         Higher Price:
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:Button ID="Button4" runat="server" Text="Search" />
    </p>
    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="search_price">
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
    <asp:SqlDataSource ID="search_price" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE (([price] &gt;= @price) AND ([price] &lt;= @price2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox4" Name="price" PropertyName="Text" Type="Double" />
            <asp:ControlParameter ControlID="TextBox5" Name="price2" PropertyName="Text" Type="Double" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="search_condition" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([condition] = @condition)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox3" Name="condition" PropertyName="Text" Type="Double" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="search_id" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([product_id] = @product_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="product_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="search_title" runat="server" ConnectionString="<%$ ConnectionStrings:assignment4ConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([title] LIKE '%' + @title + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="title" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>
