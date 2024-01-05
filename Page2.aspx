<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="ZON_220065605.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <hr />
    <div style="width: 100%; height: auto;">
      <div style="float: left; width: 35%;">
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TV_Brand" DataValueField="TV_Brand"></asp:DropDownList> 
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ist3bxConnectionString %>" SelectCommand="SELECT [TV_Brand] FROM [TVCompany]"></asp:SqlDataSource>
      </div>
      <div style="float: left; width: 55%">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="722px">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:BoundField DataField="TV_Brand" HeaderText="TV_Brand" SortExpression="TV_Brand" />
                  <asp:BoundField DataField="TV_Model" HeaderText="TV_Model" SortExpression="TV_Model" />
                  <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                  <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                  <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
                  <asp:BoundField DataField="QOH" HeaderText="QOH" SortExpression="QOH" />
              </Columns>
              <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
              <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
              <SortedAscendingCellStyle BackColor="#FDF5AC" />
              <SortedAscendingHeaderStyle BackColor="#4D0000" />
              <SortedDescendingCellStyle BackColor="#FCF6C0" />
              <SortedDescendingHeaderStyle BackColor="#820000" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ist3bxConnectionString %>" SelectCommand="SELECT TV.TV_Brand, TV.TV_Model, TV.Price, TV.ID, TVCompany.Warranty, TV.QOH FROM TV INNER JOIN TVCompany ON TV.TV_Brand = TVCompany.TV_Brand WHERE (TV.TV_Brand = @Brand)">
              <SelectParameters>
                  <asp:ControlParameter ControlID="DropDownList1" Name="Brand" PropertyName="SelectedValue" />
              </SelectParameters>
          </asp:SqlDataSource>
       </div>
        <br style="clear:both;"/>

        <div style="clear:both; background-color: #C0C0C0; text-align: center; color: #000000;">

        Customer Detail

        </div>

        <div>

           <asp:Label ID="lblDate" runat="server" Font-Bold="True"></asp:Label>

         <br />

        <h4>

        Customer Name: &nbsp; <asp:TextBox ID="txtCustName" runat="server" Width="234px"></asp:TextBox>

        </h4>      

        </div>

        <div>

         <div>

          <asp:Button ID="btnConfirmSale" runat="server" Text="Confirm Sale" Height="35px" Width="180px" OnClick="btnConfirmSale_Click" />

         </div>

        <asp:Label ID="LblSaleStatus" runat="server" Text="Sale Status:" Font-Size="Medium" Font-Italic="True" ForeColor="#669900"></asp:Label>

        </div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ist3bxConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [OrderNo] = @OrderNo" InsertCommand="INSERT INTO [Order] ([CustName], [Date], [TV_ID], [Price]) VALUES (@CustName, @Date, @TV_ID, @Price)" SelectCommand="SELECT * FROM [Order]" UpdateCommand="UPDATE [Order] SET [CustName] = @CustName, [Date] = @Date, [TV_ID] = @TV_ID, [Price] = @Price WHERE [OrderNo] = @OrderNo">
            <DeleteParameters>
                <asp:Parameter Name="OrderNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtCustName" Name="CustName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lblDate" Name="Date" PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="GridView1" Name="TV_ID" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="GridView1" Name="Price" PropertyName="SelectedValue" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustName" Type="String" />
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="TV_ID" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="OrderNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
