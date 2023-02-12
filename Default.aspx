<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="vallorCafe_Website._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   
   <br /><br />
    <div>
        <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" CellPadding="2" >
            <ItemTemplate>
                <table>
                    <tr>
                        <td>Product Name :</td>
                        <br />
                        <td><%#Eval("Name") %></td>
                    </tr>
                    <tr>
                        <hr />
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("ProductImageName") %>' Height="120" Width="120" /></td>
                    </tr>
                    <tr>
                        <td>Description : </td>
                        <br />
                        <tb><%#Eval("Description") %></tb>
                    </tr>
                    <tr>
                        <td>Price : R</td>
                        <br />
                        <td><%#Eval("SellingPrice") %></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group17ConnectionString %>" SelectCommand="SELECT * FROM [Product]">
        </asp:SqlDataSource>

   </div>
   

    </asp:Content>
