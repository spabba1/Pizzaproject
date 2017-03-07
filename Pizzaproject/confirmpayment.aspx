<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmpayment.aspx.cs" Inherits="Pizzaproject.confirmpayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
        <asp:BoundField ItemStyle-Width="150px" DataField="ID" HeaderText="ID" />
        <asp:BoundField ItemStyle-Width="150px" DataField="CID" HeaderText="CID" />
        <asp:BoundField ItemStyle-Width="150px" DataField="PID" HeaderText="PID" />
        <asp:BoundField ItemStyle-Width="150px" DataField="first_name" HeaderText="first_name" />
                <asp:BoundField ItemStyle-Width="150px" DataField="last_name" HeaderText="last_name" />
        <asp:BoundField ItemStyle-Width="150px" DataField="address" HeaderText="address" />
        <asp:BoundField ItemStyle-Width="150px" DataField="city" HeaderText="City" />
        <asp:BoundField ItemStyle-Width="150px" DataField="postal" HeaderText="postal" />
                <asp:BoundField ItemStyle-Width="150px" DataField="phone1" HeaderText="phone1" />
        <asp:BoundField ItemStyle-Width="150px" DataField="email" HeaderText="email" />
        <asp:BoundField ItemStyle-Width="150px" DataField="nameonthecard" HeaderText="nameonthecard" />
        <asp:BoundField ItemStyle-Width="150px" DataField="cardnumber" HeaderText="cardnumber" />
                <asp:BoundField ItemStyle-Width="150px" DataField="cardtype" HeaderText="cardtype" />
        <asp:BoundField ItemStyle-Width="150px" DataField="cvv" HeaderText="cvv" />
        <asp:BoundField ItemStyle-Width="150px" DataField="expdt" HeaderText="expdt" />
        <asp:BoundField ItemStyle-Width="150px" DataField="pizzasize" HeaderText="pizzasize" />
                <asp:BoundField ItemStyle-Width="150px" DataField="qty" HeaderText="qty" />
        <asp:BoundField ItemStyle-Width="150px" DataField="totalprice" HeaderText="totalprice" />
        
    </Columns>
        </asp:GridView>
        
        <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pizza_dbConnectionString %>" SelectCommand="SELECT * FROM [tblretrive]"></asp:SqlDataSource>--%>
    </div>
        <asp:Button ID="btnconfirm" runat="server" Text="confirm order" OnClick="btnconfirm_Click" />
        
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btncancel2" runat="server" OnClick="btncancel2_Click" Text="cancel" />
    </form>

</body>
</html>
