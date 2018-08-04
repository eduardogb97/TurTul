<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendPayment.aspx.cs" Inherits="TurTul.Vista.SendPayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
<!--form action for live transaction https://www.paypal.com/cgi-bin/webscr-->
    <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" id="form1"
        name="form1">
        <input type="hidden" name="cmd" value="_xclick" />
        <input type="hidden" name="business" value="Your Business Account Email" /><!--Paypal or sandbox Merchant account -->
        <input type="hidden" name="item_name" value="<%=Session["orderID"]%>_Books"/>
        <input type="hidden" name="item_number" value="InvoiceId" />
        <input type="hidden" name="rm" value="2" />
        <input type="hidden" name="amount" value="<%=Session["totalShoppingAmt"]%>" />
        <input type="hidden" name="return" value="Return Url just like an thanks Page" /><!--this page will be your redirection page thanks.aspx -->
        <input type="hidden" name="cancel_return" value="Cancel Url if payer cancel the payment" /> <!--  Cancel.apsx-- >
        <input type="hidden" name="currency_code" value="USD" />
        <input type="hidden" name="notify_url" value="http://domainname/paypal.aspx" /><!--this should be your domain web page where you going to receive all your transaction variables  Make sure this will be active domain not local host it will handle your Ipn Details. Return by paypal  -->
    </form>

    <script language="javascript" type="text/javascript">
    document.form1.submit();  
    </script>

</body>
</html>
