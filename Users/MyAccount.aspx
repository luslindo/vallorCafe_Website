<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="vallorCafe_Website.Users.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:Label ID="Label1" runat="server" Text="date"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="CustID" DataSourceID="SqlDataSource1" GridLines="Horizontal">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="Fname" HeaderText="First Name" SortExpression="Fname" />
        <asp:BoundField DataField="Lname" HeaderText="Last Name" SortExpression="Lname" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ReadOnly="True" />
        <asp:BoundField DataField="CellNumber" HeaderText="CellNumber" SortExpression="CellNumber" />
        <asp:BoundField DataField="Block" HeaderText="Block" SortExpression="Block" />
        <asp:BoundField DataField="RoomNumber" HeaderText="RoomNumber" SortExpression="RoomNumber" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:group17ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustID] = @original_CustID AND [Fname] = @original_Fname AND [Lname] = @original_Lname AND [Email] = @original_Email AND [CellNumber] = @original_CellNumber AND (([Block] = @original_Block) OR ([Block] IS NULL AND @original_Block IS NULL)) AND (([RoomNumber] = @original_RoomNumber) OR ([RoomNumber] IS NULL AND @original_RoomNumber IS NULL))" InsertCommand="INSERT INTO [Customer] ([Fname], [Lname], [Email], [CellNumber], [Block], [RoomNumber]) VALUES (@Fname, @Lname, @Email, @CellNumber, @Block, @RoomNumber)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [CellNumber] = @CellNumber, [Block] = @Block, [RoomNumber] = @RoomNumber WHERE [CustID] = @original_CustID AND [Fname] = @original_Fname AND [Lname] = @original_Lname AND [Email] = @original_Email AND [CellNumber] = @original_CellNumber AND (([Block] = @original_Block) OR ([Block] IS NULL AND @original_Block IS NULL)) AND (([RoomNumber] = @original_RoomNumber) OR ([RoomNumber] IS NULL AND @original_RoomNumber IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_CustID" Type="Int32" />
        <asp:Parameter Name="original_Fname" Type="String" />
        <asp:Parameter Name="original_Lname" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_CellNumber" Type="String" />
        <asp:Parameter Name="original_Block" Type="String" />
        <asp:Parameter Name="original_RoomNumber" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="CellNumber" Type="String" />
        <asp:Parameter Name="Block" Type="String" />
        <asp:Parameter Name="RoomNumber" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Fname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:ControlParameter ControlID="Label2" Name="Email" PropertyName="Text" Type="String" />
        <asp:Parameter Name="CellNumber" Type="String" />
        <asp:Parameter Name="Block" Type="String" />
        <asp:Parameter Name="RoomNumber" Type="String" />
        <asp:Parameter Name="original_CustID" Type="Int32" />
        <asp:Parameter Name="original_Fname" Type="String" />
        <asp:Parameter Name="original_Lname" Type="String" />
        <asp:Parameter Name="original_Email" Type="String" />
        <asp:Parameter Name="original_CellNumber" Type="String" />
        <asp:Parameter Name="original_Block" Type="String" />
        <asp:Parameter Name="original_RoomNumber" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />

    <div style="text-align: center; border-style: dashed; border-width: inherit; border-color: #008080; color: #0066FF; font-size: x-large;">
        <h4>Details of Previously Ordered Items</h4>
    </div>


    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:DynamicField DataField="OrderID" HeaderText="OrderID" />
            <asp:DynamicField DataField="CustID" HeaderText="CustID" />
            <asp:DynamicField DataField="Date" HeaderText="Date" />
            <asp:DynamicField DataField="[Shipping?" HeaderText="[Shipping?" />
            <asp:DynamicField DataField="OrderType" HeaderText="OrderType" />
            <asp:DynamicField DataField="PaymentType" HeaderText="PaymentType" />
            <asp:DynamicField DataField="Status" HeaderText="Status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:group17ConnectionString %>" SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>


</asp:Content>
