// consuming the Web Service 
public partial class DaWebService : Form
    {
        public DaWebService()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            PostalCodeService.WebService1SoapClient client = new PostalCodeService.WebService1SoapClient();
            dataGridView1.DataSource = client.GetData(textBoxPref.Text);
            dataGridView1.DataMember = "Cust";
        }
    }
}
