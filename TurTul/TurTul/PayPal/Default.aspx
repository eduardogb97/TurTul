<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Amount
        <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
        <asp:Button ID="btnIr" runat="server" Text="Pagar Ahora" OnClick="btnIr_Click"/></div>
    </form>
</body>
</html>
