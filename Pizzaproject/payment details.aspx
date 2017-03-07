<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="payment details.aspx.cs" Inherits="Pizzaproject.payment_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server" style="width: 304px">
    <p>
        <table style="width: 100%">
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblpaymentdetails" runat="server" Font-Bold="True" Text="Payment Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblnameonthecard" runat="server" Text="Name on the Card:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnamecard" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnamecard" ErrorMessage="name required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtnamecard" Display="Dynamic" ErrorMessage="Invalid name" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblCardtype" runat="server" Text="Card Type:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Bold="True" ForeColor="#3366FF">
                        <asp:ListItem>VISA</asp:ListItem>
                        <asp:ListItem>Master Card</asp:ListItem>
                        <asp:ListItem>AX</asp:ListItem>
                        <asp:ListItem>Discover</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Card Number:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcardnumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcardnumber" Display="Dynamic" ErrorMessage="enter the card number" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtcardnumber" Display="Dynamic" ErrorMessage="enter 16 digits" ForeColor="Red" ValidationExpression="\b\d{13,16}\b"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 28px"></td>
                <td style="height: 28px">
                    <asp:Label ID="lblcvv" runat="server" Text="CVV:"></asp:Label>
                </td>
                <td style="height: 28px">
                    <asp:TextBox ID="txtcvv" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtcvv" Display="Dynamic" ErrorMessage="must be &gt; or &lt; 3 digits" MaximumValue="999" MinimumValue="100"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcvv" ErrorMessage="cvv required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcvv" Display="Dynamic" ErrorMessage="invalid cvv" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 18px"></td>
                <td style="height: 18px">
                    <asp:Label ID="lblexpdt" runat="server" Text="Exp Dt:"></asp:Label>
                </td>
                <td style="height: 18px">
                    <asp:TextBox ID="txtexpdt" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtexpdt" Display="Dynamic" ErrorMessage="in valid date" ForeColor="Red" ValidationExpression="^((0[1-9])|(1[0-2]))\/((2016)|(20[1-2][0-9]))$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtexpdt" ErrorMessage="EXP required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 18px">&nbsp;</td>
                <td style="height: 18px">
                    <asp:Button ID="btnproceedpayment" runat="server" Text="proceed payment" Width="94px" OnClick="btnproceedpayment_Click" style="height: 26px" />
                </td>
                <td style="height: 18px">
                    <asp:Button ID="lblcancel" runat="server" CausesValidation="false" Text="Cancel" OnClick="lblcancel_Click" />
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnhome" runat="server" CausesValidation="false" OnClick="btnhome_Click" Text="Home" />
                    
                </td>
            </tr>
        </table>
        <br />
    </p>
</form>

</asp:Content>
