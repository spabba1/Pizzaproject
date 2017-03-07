<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="Pizzaproject.Mainpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" style="width: 435px">
    <asp:Label ID="lblTile" runat="server" Text="Customize Your Pizza..!" Font-Bold="True" Font-Names="Forte" Font-Size="Large" ForeColor="Red"></asp:Label>
    
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Select Your Size" ForeColor="#FF3300" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <asp:RadioButton ID="rbtnsmall" runat="server" Text="Small" AutoPostBack="True" GroupName="size" OnCheckedChanged="rbtnsmall_CheckedChanged" Checked="True"  />&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="rbnmedium" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Medium " AutoPostBack="True" GroupName="size" />&nbsp; <asp:RadioButton ID="rbtnlarge" runat="server" Text="Large" AutoPostBack="True" GroupName="size" OnCheckedChanged="rbtnlarge_CheckedChanged" />
    <br />
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 13px; top: 86px; position: absolute; height: 12px; width: 29px" Text="($7.99)"></asp:Label>
        <asp:Label ID="rbnlarge" runat="server" style="z-index: 1; left: 128px; top: 88px; position: absolute; height: 13px;" Text="($10.99)"></asp:Label>
    <br />
        <br />
    <asp:Label ID="Label2" runat="server" Text="Toppings" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 69px; top: 86px; position: absolute; height: 12px;" Text="($15.99)"></asp:Label>
    <br />
    <br />

    
    
        <table style="width: 100%">
            <tr>
                <td style="width: 88px">
                    <asp:Label ID="Label3" runat="server" Text="Meat"></asp:Label>
&nbsp;<br />
                    +$1.25</td>
                <td style="width: 99px">
                    <asp:Label ID="Label4" runat="server" Text="Veggies"></asp:Label>
                    <br />
                    +$0.60</td>
                <td>
                    <asp:Label ID="lblqty" runat="server" Text="Qty:"></asp:Label>
                    <asp:TextBox ID="txtqty" runat="server" Width="21px" OnTextChanged="txtqty_TextChanged"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtqty" Display="Dynamic" ErrorMessage="invalid entry" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtqty" Display="Dynamic" ErrorMessage="must be 0&lt;50" ForeColor="Red" MaximumValue="50" MinimumValue="1"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtqty" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:Button ID="btngo" runat="server" OnClick="btngo_Click" Text="Go" />
                </td>
            </tr>
            <tr>
                <td style="height: 84px; width: 88px;">
                    <asp:CheckBox ID="chkbxchicken" runat="server" Text="Chicken" />
                    <br />
                    <asp:CheckBox ID="chkbxham" runat="server" Text="Ham" />
                    <br />
                    <asp:CheckBox ID="chkbxbeef" runat="server" Text="Beef" />
                    <br />
                    <asp:CheckBox ID="chkbxpepperoni" runat="server" Text="Pepperoni" />
                </td>
                <td style="height: 84px; width: 99px;">
                    <asp:CheckBox ID="chkbxtomato" runat="server" Text="Tomato" />
                    <br />
                    <asp:CheckBox ID="chkbxonions" runat="server" Text="Onions" />
                    <br />
                    <asp:CheckBox ID="chkjalapenos" runat="server" Text="Jalapenos" />
                    <br />
                    <asp:CheckBox ID="chkbxmushrooms" runat="server" Text="Mushrooms" />
                    <br />
                    <asp:CheckBox ID="chkbxbellpeppers" runat="server" Text="Bellpeppers" />
                    <br />
                    <asp:CheckBox ID="chkbxpineapple" runat="server" Text="Pineapple" />
                    <br />
                    <asp:CheckBox ID="chkbxspinach" runat="server" Text="spinach" />

                </td>
                <td style="height: 84px">
                    <asp:Panel ID="Panel1" runat="server" Width="137px" Height="51px" Visible="False">
                        <asp:Label ID="lblyourorder" runat="server" Text="Your Order"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Total Price:"></asp:Label>
                        &nbsp;<asp:Label ID="lblprice" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnok" runat="server" Text="ok" style="width: 35px" OnClick="btnok_Click" CssClass="btn_4" />
                        <br />
                    </asp:Panel>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pizza_dbConnectionString %>" SelectCommand="SELECT * FROM [tblcustomer]"></asp:SqlDataSource>
                    <asp:Button ID="btnclear" runat="server" Text="Clear" style="z-index: 1; left: 257px; top: 286px; position: absolute; height: 29px; width: 46px" />
                    <asp:Button ID="btnnext" runat="server" style="z-index: 1; left: 330px; top: 287px; position: absolute; height: 30px; width: 51px" Text="Next" OnClick="btnnext_Click" />
                </td>
            </tr>
        </table>
    </form>

    
    
    </asp:Content>
