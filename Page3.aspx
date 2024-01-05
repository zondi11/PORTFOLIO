<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="ZON_220065605.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center">
        <h4>TV Sales</h4>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderNo" DataSourceID="SqlDataSource1" Width="1213px">
                <Columns>
                    <asp:BoundField DataField="OrderNo" HeaderText="OrderNo" InsertVisible="False" ReadOnly="True" SortExpression="OrderNo" />
                    <asp:BoundField DataField="TV_ID" HeaderText="TV_ID" SortExpression="TV_ID" />
                    <asp:BoundField DataField="CustName" HeaderText="CustName" SortExpression="CustName" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="TV_Brand" HeaderText="TV_Brand" SortExpression="TV_Brand" />
                    <asp:BoundField DataField="TV_Model" HeaderText="TV_Model" SortExpression="TV_Model" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ist3bxConnectionString %>" SelectCommand="SELECT [Order].OrderNo, [Order].TV_ID, [Order].CustName, [Order].Date, TV.Price, TV.TV_Brand, TV.TV_Model FROM [Order] INNER JOIN TV ON [Order].TV_ID = TV.ID"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
