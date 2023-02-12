<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shopping.aspx.cs" Inherits="vallorCafe_Website.Users.Shopping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div>
    
    <div style="width: 100%; height: auto;">
        <div style="float: left; width: 35%;">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Choose a Product"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group17ConnectionString %>" SelectCommand="SELECT [Name] FROM [Product]"></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" >
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                <ItemTemplate>
                    <table>
                        <tr>
                            <td><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("ProductImageName") %>' Height="120" Width="120" /> </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <br />
            <br />
        </div>
        <div style="float: left; width: 60%">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="247px" style="margin-left: 51px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
                    <asp:BoundField DataField="SellingPrice" HeaderText="SellingPrice" SortExpression="SellingPrice" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:group17ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Name] = @Name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Name" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    </div>
    <br />
    <br />

    <div style="text-align: center">
        <asp:Button ID="Button1" runat="server" Text="Add to Cart" Width="223px" Font-Bold="True" Font-Strikeout="False" OnClick="Button1_Click" />
    </div>
    <div style="font-size: x-large; text-decoration: underline; color: #008000">
        <p>&nbsp;Sale Confirmation</p>
    </div>
    <br />
    <div>
        &nbsp;
        <asp:Label ID="Label2" runat="server" Text="Sale Date:" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
&nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#66CCFF" Text="Total Amount Due:"></asp:Label>
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="288px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
    <br />
    <div>
        <asp:Button ID="Button2" runat="server" Text="Confirm Sale" Width="139px" />
    </div>

    
</asp:Content>
