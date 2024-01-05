<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ZON_220065605._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <hr />
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center" Width="460px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="TV_Brand" HeaderText="TV_Brand" SortExpression="TV_Brand" />
                <asp:BoundField DataField="TV_Model" HeaderText="TV_Model" SortExpression="TV_Model" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="QOH" HeaderText="QOH" SortExpression="QOH" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ist3bxConnectionString %>" DeleteCommand="DELETE FROM [TV] WHERE [ID] = @original_ID AND (([TV_Brand] = @original_TV_Brand) OR ([TV_Brand] IS NULL AND @original_TV_Brand IS NULL)) AND (([TV_Model] = @original_TV_Model) OR ([TV_Model] IS NULL AND @original_TV_Model IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([QOH] = @original_QOH) OR ([QOH] IS NULL AND @original_QOH IS NULL))" InsertCommand="INSERT INTO [TV] ([TV_Brand], [TV_Model], [Price], [QOH]) VALUES (@TV_Brand, @TV_Model, @Price, @QOH)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TV]" UpdateCommand="UPDATE [TV] SET [TV_Brand] = @TV_Brand, [TV_Model] = @TV_Model, [Price] = @Price, [QOH] = @QOH WHERE [ID] = @original_ID AND (([TV_Brand] = @original_TV_Brand) OR ([TV_Brand] IS NULL AND @original_TV_Brand IS NULL)) AND (([TV_Model] = @original_TV_Model) OR ([TV_Model] IS NULL AND @original_TV_Model IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([QOH] = @original_QOH) OR ([QOH] IS NULL AND @original_QOH IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_TV_Brand" Type="String" />
                <asp:Parameter Name="original_TV_Model" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_QOH" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TV_Brand" Type="String" />
                <asp:Parameter Name="TV_Model" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="QOH" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TV_Brand" Type="String" />
                <asp:Parameter Name="TV_Model" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="QOH" Type="Int32" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_TV_Brand" Type="String" />
                <asp:Parameter Name="original_TV_Model" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_QOH" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
