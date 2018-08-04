using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurTul.Vista
{
    public partial class Paypal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {//Post back to either sandbox or live
            string strSandbox = "https://www.sandbox.paypal.com/cgi-bin/webscr";
            // string strLive = "https://www.paypal.com/cgi-bin/webscr";
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(strSandbox);

            //Set values for the request back
            req.Method = "POST";
            req.ContentType = "application/x-www-form-urlencoded";
            byte[] param = Request.BinaryRead(HttpContext.Current.Request.ContentLength);
            string strRequest = Encoding.ASCII.GetString(param);
            strRequest += "&cmd=_notify-  validate";
            req.ContentLength = strRequest.Length;

            //for proxy
            //WebProxy proxy = new WebProxy(new Uri("http://url:port#"));
            //req.Proxy = proxy;

            //Send the request to PayPal and get the response
            StreamWriter streamOut = new StreamWriter(req.GetRequestStream(), System.Text.Encoding.ASCII);
            streamOut.Write(strRequest);
            streamOut.Close();
            StreamReader streamIn = new StreamReader(req.GetResponse().GetResponseStream());
            string strResponse = streamIn.ReadToEnd();
            streamIn.Close();


            if (strResponse == "VERIFIED")
            {

            }
            else if (strResponse == "INVALID")
            {

            }
            else
            {


            }
        }
    }

}