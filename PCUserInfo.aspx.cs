using Newtonsoft.Json.Linq;
using System;
using System.Configuration;
using System.IO;
using System.Net;

namespace PasswordExpressProfileWebApp
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nuid = Request.Form.Get("nuid");
            string response=GetRemoteResponse(nuid);
            if (response.Equals(""))
            {

            }
            else
            {
                JObject json = JObject.Parse(response);
                string pin = json.GetValue("PIN").ToString();
                string answer = json.GetValue("ANSWER").ToString();
                // Display the content.
                Console.WriteLine(json);
            }
        }

        public string GetRemoteResponse(string nuid)
        {
            string connectionUrl = System.Configuration.ConfigurationManager.AppSettings["ConnectionInfo"];
            connectionUrl=connectionUrl.Replace("{nuid}", nuid);
            // Create a request using a URL that can receive a post.
            WebRequest request = WebRequest.Create(connectionUrl);
            // Set the Method property of the request to POST.
            request.Method = "GET";

         
            // Get the response.
            WebResponse response = request.GetResponse();
            // Display the status.
            Console.WriteLine(((HttpWebResponse)response).StatusDescription);

            // Get the stream containing content returned by the server.
            // The using block ensures the stream is automatically closed.
            using (System.IO.Stream dataStream = response.GetResponseStream())
            {
                // Open the stream using a StreamReader for easy access.
                StreamReader reader = new StreamReader(dataStream);
                // Read the content.
                string responseFromServer = reader.ReadToEnd();
                return responseFromServer;
            }

         }
    }

   
}