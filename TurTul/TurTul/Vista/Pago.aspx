<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pago.aspx.cs" Inherits="TurTul.Vista.Pago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Amount
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="PayNow" OnClick="Button1_Click" /></div>
    </form>
</body>
</html>
    