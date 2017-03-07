<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="customerdetails.aspx.cs" Inherits="Pizzaproject.customerdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <table style="width: 138%; height: 284px;">
            <tr>
                <td colspan="3" style="height: 32px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Customer Information"></asp:Label>
                </td>
            </tr>
            <tr>
                <td rowspan="7"></td>
                <td style="width: 59px; height: 28px;">
                    <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td style="height: 28px">
                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="Enter the name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtfname" Display="Dynamic" ErrorMessage="in valid name" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 59px">
                    <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="Enter the lastname" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="In valid name" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 59px">
                    <asp:Label ID="lbladdress" runat="server" Text="Address:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter the address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 59px">
                    <asp:Label ID="lblcity" runat="server" Text="City:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter the City" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="invalid city" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 59px; height: 28px;">
                    <asp:Label ID="lblpostal" runat="server" Text="Postal:"></asp:Label>
                </td>
                <td style="height: 28px">
                    <asp:TextBox ID="txtpostal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpostal" ErrorMessage="REnter the postal" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtpostal" ErrorMessage="invalid zipcode" ForeColor="#0099FF" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 59px">
                    <asp:Label ID="lblphone1" runat="server" Text="Phone1:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtphone1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtphone1" ErrorMessage="Enter the phone1:" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtphone1" ErrorMessage="invaildph" ForeColor="#000066" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 59px">
                    <asp:Label ID="lblphone2" runat="server" Text="Phone2:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtphone2" runat="server"></asp:TextBox>
                    <asp:Label ID="Labelcid" runat="server" Text="CID" ></asp:Label>
                    <asp:TextBox ID="txtcid" runat="server"  OnTextChanged="txtcid_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 29px"></td>
                <td style="width: 59px; height: 29px;">
                    <asp:Label ID="lblemail" runat="server" Text="email:"></asp:Label>
                </td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter the email" ForeColor="Red" Display="Dynamic" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="enter the email correctly" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
      
        <asp:Button ID="btnnext" runat="server" Text="Next" style="z-index: 1; top: 292px; position: absolute; left: 113px; " OnClick="btnnext_Click1" />
                    <asp:Button ID="btnback" runat="server" style="z-index: 1; left: 36px; top: 290px; position: absolute" CausesValidation="false" Text="Back" OnClick="btnback_Click" />
                    <br />
                    <br />
                    <asp:Button ID="btnclear" runat="server" style="z-index: 1; left: 182px; top: 291px; position: absolute" CausesValidation="false" Text="Clear" OnClick="btnclear_Click" />
                </td>
            </tr>
        </table>
      
    </form>

</asp:Content>
