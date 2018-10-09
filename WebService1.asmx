 [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

      

        [WebMethod]
        public DataSet GetData(string inputtext)
        {
            // opening connection
            string connectionString = @"Data Source=NEW\SQLEXPRESS;Initial Catalog=Areas_P;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection conn = new SqlConnection(connectionString);

            SqlDataAdapter daCust = new SqlDataAdapter("select PostalCode, PrefectureName FROM Areas_P.dbo.Main_Area WHERE PrefectureName Like '%" + inputtext + "%'", conn);


            DataSet ds = new DataSet();
            daCust.Fill(ds, "Cust");
            return ds;
        }
    }
}
