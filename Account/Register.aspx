<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="vallorCafe_Website.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />


        <table>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Enter First Name"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Enter Surname"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtSurName" runat="server" CssClass="form-control" ></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Enter Contact Number"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtNo" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Enter Email"></asp:Label>
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="Label8" runat="server" Text="Room Number"></asp:Label>
                    <asp:TextBox ID="txtRoom" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td><asp:Label ID="Label7" runat="server" Text="Block"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="BlockName" DataValueField="BlockName">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group17ConnectionString %>" SelectCommand="SELECT * FROM [Block]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Enter Password"></asp:Label>
                    <br />
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" OnTextChanged="Password_TextChanged" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:group17ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustID] = @original_CustID AND [Fname] = @original_Fname AND [Lname] = @original_Lname AND [Email] = @original_Email AND [CellNumber] = @original_CellNumber AND (([Block] = @original_Block) OR ([Block] IS NULL AND @original_Block IS NULL)) AND (([RoomNumber] = @original_RoomNumber) OR ([RoomNumber] IS NULL AND @original_RoomNumber IS NULL))" InsertCommand="INSERT INTO [Customer] ([Fname], [Lname], [Email], [CellNumber], [Block], [RoomNumber]) VALUES (@Fname, @Lname, @Email, @CellNumber, @Block, @RoomNumber)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [CellNumber] = @CellNumber, [Block] = @Block, [RoomNumber] = @RoomNumber WHERE [CustID] = @original_CustID AND [Fname] = @original_Fname AND [Lname] = @original_Lname AND [Email] = @original_Email AND [CellNumber] = @original_CellNumber AND (([Block] = @original_Block) OR ([Block] IS NULL AND @original_Block IS NULL)) AND (([RoomNumber] = @original_RoomNumber) OR ([RoomNumber] IS NULL AND @original_RoomNumber IS NULL))">
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
                            <asp:ControlParameter ControlID="txtName" Name="Fname" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txtSurName" Name="Lname" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Email" Name="Email" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txtNo" Name="CellNumber" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="Block" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="txtRoom" Name="RoomNumber" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Fname" Type="String" />
                            <asp:Parameter Name="Lname" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
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
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                     <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                     <br />
                     <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                </td>
                <td></td>
            </tr>
        </table>





        <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
</asp:Content>
